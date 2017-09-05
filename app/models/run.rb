class Run < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  belongs_to :park, optional: true

  has_one :conversation
  has_one :review


  enum status: { pre_pending: 0, pending: 1, confirmed: 2, coming: 3, arrived: 4, started: 5, ended: 6, cancelled: 7 }

  validates :dog_id, presence: true

  DURATIONS = [15, 30, 45, 60]

  after_create :generate_conversation
  after_save :broadcast_run

  def generate_conversation
    self.build_conversation
    self.save
  end

  def broadcast_run
    ActionCable.server.broadcast("run_#{self.id}", {
      run_first_partial: ApplicationController.renderer.render(
        partial: "runs/run_status_first",
        locals: { run: self, user: self.user, dog: self.dog }
      ),
      run_second_partial: ApplicationController.renderer.render(
        partial: "runs/run_status_second",
        locals: { run: self, user: self.user }
      ),
      current_user_id: user.id
    })
  end


end

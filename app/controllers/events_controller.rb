class EventsController < ApplicationController
    def create
        user = User.find(params[:user_id])
        # event = Event.new(event_params)
        event = user.events.new(event_params)
        if event.save
            # render json: event
            render json: user
        else
            render json: {message: event.errors.full_messages.to_sentence}
        end
    end

    def update
        #byebug
        event = Event.find_by(id: params[:id])
        user = User.find_by(id: event.user_id)
        if event
            event.update(title: params["events"]["title"], date: params["events"]["date"])
            render json: user
        else 
            render json: {message: "Failed to update"}
        end
    end

    def destroy
        event = Event.find_by(id: params[:id])
        user = User.find_by(id: event.user_id)
        if event
            event.destroy
            render json: user
        else 
            render json: {message: "Delete failed"}
        end
    end

    private
    def event_params
        params.require(:event).permit(:title, :date, :user_id)
    end
end
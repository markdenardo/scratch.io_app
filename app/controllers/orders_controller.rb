class OrdersController < ApplicationController

    def new
      @order = Order.new
    end

    def create
      @order = Order.create(order_params)

<<<<<<< HEAD
      if order.valid?
        redirect_to orders_path
=======
      if @order.valid?
        redirect_to new_post_path
>>>>>>> mvp
      else
        redirect_to new_order_path
      end
  end

    def edit
      @order = Order.find(params[:id])
    end

    def update
        @order = Order.find(params[:id])
        @order.update(order_params)
        redirect_to order_path(@order)
    end

    def destroy
      @order = Order.find(params[:id])
      @order.destroy
      redirect_to orders_path
    end

    private

    def order_params
      params.require(:order).permit(:user_id, :item_id)
    end

end

class FotosController < ApplicationController
    before_action :set_gallery

  def create
    add_more_images(images_params[:fotos])
    flash[:error] = "Failed uploading images" unless @gallery.save
    respond_to do |format|
      format.html { redirect_to hotel_path(@gallery) }
    end
  end

  def destroy
    remove_images(params[:remove_images])
      flash[:error] = "Failed delete images" unless @gallery.save
      respond_to do |format|
        format.html { redirect_to hotel_path(@gallery) }
      end
  end

  private

  def set_gallery
    @gallery = Hotel.find(params[:hotel_id])
  end

  def add_more_images(new_images)
    images = @gallery.fotos # copy the old images
    images += new_images # concat old images with new ones
    @gallery.fotos = images # assign back
  end

  def remove_images(images_remove)
    remove = @gallery.fotos
    images_remove.map!(&:to_i)
    images_remove.sort! { |a, b| b <=> a }
    images_remove.each do |rem|
      if rem.zero? && remove.size == 1
        @gallery.remove_fotos!
      else
        remove.delete_at(rem)
      end
    end
    @gallery.fotos = remove
  end

  def images_params
    params.require(:hotel).permit(fotos: []) # allow nested params as array
  end
end

class StaticPagesController < ApplicationController
  def home
  end

  def courses
  end

  def subjects
  end

  def instructors
  end

  def search
    if params[:name].nil? && params[:subject_id].blank?
      @courses = Course.all
    else 
      holder = Course.all
      if !params[:name].nil?
        holder = holder.where('name LIKE ?', "%#{params[:name]}%")
      end
      if !params[:subject_id].blank?
        holder = holder & Subject.where('subject_id LIKE ?', "%#{params[:subject_id]}%").first.courses
      end
      @courses = holder
    end  
  end
end

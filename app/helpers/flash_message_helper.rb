module FlashMessageHelper
  def getFlashColorClasses(type)
    case type.to_sym
    when :success
      { border: "border-green-400",
        icon: "fa-regular fa-circle-check text-green-400",
        title: "Success!",
        titleColor: "text-green-500"
      }
    when :error
      { border: "border-red-400",
        icon: "fa-regular fa-circle-xmark text-red-400",
        title: "Error!",
        titleColor: "text-red-500"
      }
    when :warning
      { border: "border-yellow-500",
        icon: "fa-solid fa-triangle-exclamation text-yellow-500",
        title: "Warning!",
        titleColor: "text-yellow-600"
      }
    when :notice
      { border: "border-blue-500",
        icon: "fa-solid fa-circle-info text-blue-500",
        title: "Notice!",
        titleColor: "text-blue-700"
      }
    when :alert
      { border: "border-yellow-500",
        icon: "fa-solid fa-triangle-exclamation text-yellow-500",
        title: "Alert!",
        titleColor: "text-yellow-600"
      }
    else
      { border: "border-green-400",
        icon: "fa-regular fa-circle-check text-green-400",
        title: "Success!",
        titleColor: "text-green-500"
      }
    end
  end
end

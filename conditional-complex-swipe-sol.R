

# swipe right function ----------------------------------------------------


swipe_right <- function(swiper, profile) {
  if (profile[["has_picture"]]) {
    if (profile[["picture_attractive"]]) {
      if (swiper[["sober"]]) {
        if (!all(is.na(profile[["likes"]]))) {
          if (profile[["rather_weird"]]) {
            return(FALSE)
          } else {
            if (any(swiper[["likes"]] %in% profile[["likes"]])) {
              return(TRUE)
            } else {
              return(FALSE)
            }
          }
        } else {
          stop("can't decide without informative profile.")
        }
      } else {
        return(TRUE)
      }
    } else {
      return(FALSE)
    }
  } else {
    stop("can't decide without a picture.")
  }
}


# modified swipe_right function -------------------------------------------


swipe_right <- function(swiper, profile) {
  if (!profile[["has_picture"]]) {
    stop("can't decide without a picture.")
  }
  
  if (!profile[["picture_attractive"]]) {
    return(FALSE)
  }
      
  if (!swiper[["sober"]]) {
    return(TRUE)
  }
        
  if (all(is.na(profile[["likes"]]))) {
    stop("can't decide without informative profile.")
  }
          
  if (profile[["rather_weird"]]) {
    return(FALSE)
  } 
  
            
  if (!any(swiper[["likes"]] %in% profile[["likes"]])) {
    return(FALSE)
  }
        
  TRUE
    
  
}



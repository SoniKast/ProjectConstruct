/// fs_self_in_view(view, add)
 // Checks if inside the given view.
 // "add" can be used to increase the view size check.
 
    var v_view = argument0;
    if((bbox_right > view_xview[v_view]-argument1) && (bbox_left < view_xview[v_view] + view_wview[v_view]+argument1) && (bbox_bottom > view_yview[v_view]-argument1) && (bbox_top < view_yview[v_view] + view_hview[v_view]+argument1))
    {
       return true;
    }
    else return null;

module dimgui;
import derelict.glfw3.glfw3;
import core.stdc.stdarg:va_list;

extern(C) @nogc nothrow {
alias dimgui_init_t0 = void function();
alias ImDrawList_AddCircleFilled_t0 = void function(ImDrawList* self, ImVec2 centre, float radius, ImU32 col, int num_segments);
alias igGetForegroundDrawList_t0 = ImDrawList* function();
alias ImFontAtlas_GetGlyphRangesChineseFull_t0 = ImWchar* function(ImFontAtlas* self);
alias igSliderFloat_t0 = bool function(char* label, float* v, float v_min, float v_max, char* format, float power);
alias ImFontAtlas_AddCustomRectRegular_t0 = int function(ImFontAtlas* self, uint id, int width, int height);
alias igSetWindowFontScale_t0 = void function(float scale);
alias ImFontAtlas_GetGlyphRangesThai_t0 = ImWchar* function(ImFontAtlas* self);
alias ImFont_GrowIndex_t0 = void function(ImFont* self, int new_size);
alias ImFontAtlas_ClearInputData_t0 = void function(ImFontAtlas* self);
alias igIsMouseDragging_t0 = bool function(int button, float lock_threshold);
alias ImGuiTextBuffer_end_t0 = char* function(ImGuiTextBuffer* self);
alias igSetClipboardText_t0 = void function(char* text);
alias igLoadIniSettingsFromDisk_t0 = void function(char* ini_filename);
alias igRadioButtonBool_t0 = bool function(char* label, bool active);
alias igRadioButtonIntPtr_t1 = bool function(char* label, int* v, int v_button);
alias ImGuiTextFilter_Clear_t0 = void function(ImGuiTextFilter* self);
alias igGetWindowPos_t0 = ImVec2 function();
alias igGetWindowPos_nonUDT_t1 = void function(ImVec2* pOut);
alias ImGuiIO_ClearInputCharacters_t0 = void function(ImGuiIO* self);
alias igSpacing_t0 = void function();
alias CustomRect_IsPacked_t0 = bool function(CustomRect* self);
alias ImGuiTextBuffer_c_str_t0 = char* function(ImGuiTextBuffer* self);
alias igGetDrawData_t0 = ImDrawData* function();
alias igPopItemWidth_t0 = void function();
alias igIsWindowAppearing_t0 = bool function();
alias igTreeAdvanceToLabelPos_t0 = void function();
alias ImGuiStorage_GetVoidPtr_t0 = void* function(ImGuiStorage* self, ImGuiID key);
alias igIsPopupOpen_t0 = bool function(char* str_id);
alias igInputDouble_t0 = bool function(char* label, double* v, double step, double step_fast, char* format, ImGuiInputTextFlags flags);
alias igUnindent_t0 = void function(float indent_w);
alias igGetFontSize_t0 = float function();
alias ImFontAtlas_CalcCustomRectUV_t0 = void function(ImFontAtlas* self, CustomRect* rect, ImVec2* out_uv_min, ImVec2* out_uv_max);
alias igGetFrameHeightWithSpacing_t0 = float function();
alias igGetItemRectMax_t0 = ImVec2 function();
alias igGetItemRectMax_nonUDT_t1 = void function(ImVec2* pOut);
alias igDragInt_t0 = bool function(char* label, int* v, float v_speed, int v_min, int v_max, char* format);
alias igGetFont_t0 = ImFont* function();
alias igDragFloatRange2_t0 = bool function(char* label, float* v_current_min, float* v_current_max, float v_speed, float v_min, float v_max, char* format, char* format_max, float power);
alias ImGuiStorage_Clear_t0 = void function(ImGuiStorage* self);
alias igSetCursorScreenPos_t0 = void function(ImVec2 pos);
alias ImFont_GetDebugName_t0 = char* function(ImFont* self);
alias igBeginPopupContextWindow_t0 = bool function(char* str_id, int mouse_button, bool also_over_items);
alias ImGuiPayload_IsPreview_t0 = bool function(ImGuiPayload* self);
alias igLabelTextV_t0 = void function(char* label, char* fmt, va_list args);
alias igGetScrollMaxX_t0 = float function();
alias igCloseCurrentPopup_t0 = void function();
alias igGetMouseDragDelta_t0 = ImVec2 function(int button, float lock_threshold);
alias igGetMouseDragDelta_nonUDT_t1 = void function(ImVec2* pOut, int button, float lock_threshold);
alias igSetWindowCollapsedBool_t0 = void function(bool collapsed, ImGuiCond cond);
alias igSetWindowCollapsedStr_t1 = void function(char* name, bool collapsed, ImGuiCond cond);
alias igTextDisabled_t0 = void function(char* fmt, va_list args);
alias igShowUserGuide_t0 = void function();
alias igEndPopup_t0 = void function();
alias igBeginChildFrame_t0 = bool function(ImGuiID id, ImVec2 size, ImGuiWindowFlags flags);
alias ImGuiTextBuffer_append_t0 = void function(ImGuiTextBuffer* self, char* str, char* str_end);
alias igIsRectVisible_t0 = bool function(ImVec2 size);
alias igIsRectVisibleVec2_t1 = bool function(ImVec2 rect_min, ImVec2 rect_max);
alias ImGuiInputTextCallbackData_HasSelection_t0 = bool function(ImGuiInputTextCallbackData* self);
alias igEndFrame_t0 = void function();
alias igColorConvertRGBtoHSV_t0 = void function(float r, float g, float b, ref float out_h, ref float out_s, ref float out_v);
alias igIsMouseClicked_t0 = bool function(int button, bool repeat);
alias igSetNextWindowFocus_t0 = void function();
alias igGetClipboardText_t0 = char* function();
alias igIsAnyItemHovered_t0 = bool function();
alias ImGuiListClipper_ImGuiListClipper_t0 = ImGuiListClipper* function(int items_count, float items_height);
alias igListBoxHeaderVec2_t0 = bool function(char* label, ImVec2 size);
alias igListBoxHeaderInt_t1 = bool function(char* label, int items_count, int height_in_items);
alias igBeginPopup_t0 = bool function(char* str_id, ImGuiWindowFlags flags);
alias igMenuItemBool_t0 = bool function(char* label, char* shortcut, bool selected, bool enabled);
alias igMenuItemBoolPtr_t1 = bool function(char* label, char* shortcut, bool* p_selected, bool enabled);
alias igResetMouseDragDelta_t0 = void function(int button);
alias igSaveIniSettingsToDisk_t0 = void function(char* ini_filename);
alias ImFontConfig_destroy_t0 = void function(ImFontConfig* self);
alias ImGuiListClipper_End_t0 = void function(ImGuiListClipper* self);
alias igDestroyContext_t0 = void function(ImGuiContext* ctx);
alias ImDrawList_UpdateClipRect_t0 = void function(ImDrawList* self);
alias igSetNextWindowContentSize_t0 = void function(ImVec2 size);
alias TextRange_empty_t0 = bool function(TextRange* self);
alias igInputTextMultiline_t0 = bool function(char* label, char* buf, size_t buf_size, ImVec2 size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data);
alias ImGuiTextFilter_IsActive_t0 = bool function(ImGuiTextFilter* self);
alias ImFontAtlas_GetMouseCursorTexData_t0 = bool function(ImFontAtlas* self, ImGuiMouseCursor cursor, ImVec2* out_offset, ImVec2* out_size, ImVec2[2] out_uv_border, ImVec2[2] out_uv_fill);
alias igLogText_t0 = void function(char* fmt, va_list args);
alias igGetTextLineHeightWithSpacing_t0 = float function();
alias igPushStyleVarFloat_t0 = void function(ImGuiStyleVar idx, float val);
alias igPushStyleVarVec2_t1 = void function(ImGuiStyleVar idx, ImVec2 val);
alias igTextColoredV_t0 = void function(ImVec4 col, char* fmt, va_list args);
alias ImFontAtlas_ClearFonts_t0 = void function(ImFontAtlas* self);
alias igIsKeyReleased_t0 = bool function(int user_key_index);
alias igLogToClipboard_t0 = void function(int auto_open_depth);
alias ImFontAtlas_GetGlyphRangesKorean_t0 = ImWchar* function(ImFontAtlas* self);
alias ImFontGlyphRangesBuilder_SetBit_t0 = void function(ImFontGlyphRangesBuilder* self, int n);
alias igStyleColorsClassic_t0 = void function(ImGuiStyle* dst);
alias igBegin_t0 = bool function(char* name, bool* p_open, ImGuiWindowFlags flags);
alias igBeginMenuBar_t0 = bool function();
alias igButton_t0 = bool function(char* label, ImVec2 size);
alias igTextColored_t0 = void function(ImVec4 col, char* fmt, va_list args);
alias igSliderScalar_t0 = bool function(char* label, ImGuiDataType data_type, void* v, void* v_min, void* v_max, char* format, float power);
alias igListBoxFooter_t0 = void function();
alias igGetScrollY_t0 = float function();
alias igGetStyleColorVec4_t0 = ImVec4* function(ImGuiCol idx);
alias igSetWindowFocus_t0 = void function();
alias igSetWindowFocusStr_t1 = void function(char* name);
alias igInvisibleButton_t0 = bool function(char* str_id, ImVec2 size);
alias ImGuiStyle_ImGuiStyle_t0 = ImGuiStyle* function();
alias igIsMouseDown_t0 = bool function(int button);
alias ImFontConfig_ImFontConfig_t0 = ImFontConfig* function();
alias igNewLine_t0 = void function();
alias igMemFree_t0 = void function(void* ptr);
alias igNextColumn_t0 = void function();
alias igLogButtons_t0 = void function();
alias igEndTabItem_t0 = void function();
alias ImFont_ClearOutputData_t0 = void function(ImFont* self);
alias ImFont_ImFont_t0 = ImFont* function();
alias igVSliderFloat_t0 = bool function(char* label, ImVec2 size, float* v, float v_min, float v_max, char* format, float power);
alias igEndGroup_t0 = void function();
alias igPlotLines_t0 = void function(char* label, float* values, int values_count, int values_offset, char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride);
alias igPlotLinesFnPtr_t1 = void function(char* label, float function(void* data, int idx) values_getter, void* data, int values_count, int values_offset, char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size);
alias igSetItemAllowOverlap_t0 = void function();
alias ImGuiStorage_GetVoidPtrRef_t0 = void** function(ImGuiStorage* self, ImGuiID key, void* default_val);
alias igCheckboxFlags_t0 = bool function(char* label, uint* flags, uint flags_value);
alias ImFontGlyphRangesBuilder_AddRanges_t0 = void function(ImFontGlyphRangesBuilder* self, ImWchar* ranges);
alias ImFontAtlas_GetGlyphRangesVietnamese_t0 = ImWchar* function(ImFontAtlas* self);
alias igGetVersion_t0 = char* function();
alias ImDrawList_ImDrawList_t0 = ImDrawList* function(ImDrawListSharedData* shared_data);
alias ImGuiListClipper_destroy_t0 = void function(ImGuiListClipper* self);
alias igSetScrollY_t0 = void function(float scroll_y);
alias ImFont_CalcWordWrapPositionA_t0 = char* function(ImFont* self, float scale, char* text, char* text_end, float wrap_width);
alias igSmallButton_t0 = bool function(char* label);
alias igCombo_t0 = bool function(char* label, int* current_item, char*[] items, int items_count, int popup_max_height_in_items);
alias igComboStr_t1 = bool function(char* label, int* current_item, char* items_separated_by_zeros, int popup_max_height_in_items);
alias igComboFnPtr_t2 = bool function(char* label, int* current_item, bool function(void* data, int idx, const char**) items_getter, void* data, int items_count, int popup_max_height_in_items);
alias ImDrawList_AddCircle_t0 = void function(ImDrawList* self, ImVec2 centre, float radius, ImU32 col, int num_segments, float thickness);
alias ImDrawList_AddLine_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImU32 col, float thickness);
alias igSetMouseCursor_t0 = void function(ImGuiMouseCursor type);
alias igGetIO_t0 = ImGuiIO* function();
alias ImGuiPayload_destroy_t0 = void function(ImGuiPayload* self);
alias igEndMenu_t0 = void function();
alias ImDrawList_PrimRect_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImU32 col);
alias ImDrawList_AddRectFilled_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImU32 col, float rounding, int rounding_corners_flags);
alias igSetColorEditOptions_t0 = void function(ImGuiColorEditFlags flags);
alias igDragInt2_t0 = bool function(char* label, int[2] v, float v_speed, int v_min, int v_max, char* format);
alias igIsAnyMouseDown_t0 = bool function();
alias ImGuiTextFilter_Build_t0 = void function(ImGuiTextFilter* self);
alias igSetNextWindowCollapsed_t0 = void function(bool collapsed, ImGuiCond cond);
alias ImFontAtlas_GetGlyphRangesCyrillic_t0 = ImWchar* function(ImFontAtlas* self);
alias ImGuiStyle_destroy_t0 = void function(ImGuiStyle* self);
alias ImDrawList_destroy_t0 = void function(ImDrawList* self);
alias ImVec4_destroy_t0 = void function(ImVec4* self);
alias igTreeNodeExStr_t0 = bool function(char* label, ImGuiTreeNodeFlags flags);
alias igTreeNodeExStrStr_t1 = bool function(char* str_id, ImGuiTreeNodeFlags flags, char* fmt, va_list args);
alias igTreeNodeExPtr_t2 = bool function(void* ptr_id, ImGuiTreeNodeFlags flags, char* fmt, va_list args);
alias igSetColumnWidth_t0 = void function(int column_index, float width);
alias igIsItemClicked_t0 = bool function(int mouse_button);
alias ImDrawList_AddCallback_t0 = void function(ImDrawList* self, ImDrawCallback callback, void* callback_data);
alias igGetMousePos_t0 = ImVec2 function();
alias igGetMousePos_nonUDT_t1 = void function(ImVec2* pOut);
alias igBullet_t0 = void function();
alias igSetNextTreeNodeOpen_t0 = void function(bool is_open, ImGuiCond cond);
alias igGetWindowContentRegionMin_t0 = ImVec2 function();
alias igGetWindowContentRegionMin_nonUDT_t1 = void function(ImVec2* pOut);
alias igDragScalar_t0 = bool function(char* label, ImGuiDataType data_type, void* v, float v_speed, void* v_min, void* v_max, char* format, float power);
alias igSetCursorPos_t0 = void function(ImVec2 local_pos);
alias igSetTooltip_t0 = void function(char* fmt, va_list args);
alias igCalcItemWidth_t0 = float function();
alias igPushItemWidth_t0 = void function(float item_width);
alias igSetAllocatorFunctions_t0 = void function(void* function(size_t sz, void* user_data) alloc_func, void function(void* ptr, void* user_data) free_func, void* user_data);
alias ImDrawList_ChannelsMerge_t0 = void function(ImDrawList* self);
alias ImFont_FindGlyph_t0 = ImFontGlyph* function(ImFont* self, ImWchar c);
alias ImGuiPayload_IsDelivery_t0 = bool function(ImGuiPayload* self);
alias ImFontAtlas_GetGlyphRangesJapanese_t0 = ImWchar* function(ImFontAtlas* self);
alias igCaptureMouseFromApp_t0 = void function(bool want_capture_mouse_value);
alias ImGuiInputTextCallbackData_InsertChars_t0 = void function(ImGuiInputTextCallbackData* self, int pos, char* text, char* text_end);
alias igDragFloat2_t0 = bool function(char* label, float[2] v, float v_speed, float v_min, float v_max, char* format, float power);
alias ImFont_destroy_t0 = void function(ImFont* self);
alias igEndMenuBar_t0 = void function();
alias igGetWindowSize_t0 = ImVec2 function();
alias igGetWindowSize_nonUDT_t1 = void function(ImVec2* pOut);
alias igInputInt4_t0 = bool function(char* label, int[4] v, ImGuiInputTextFlags flags);
alias igGetMouseCursor_t0 = ImGuiMouseCursor function();
alias igLabelText_t0 = void function(char* label, char* fmt, va_list args);
alias igIsMouseDoubleClicked_t0 = bool function(int button);
alias ImDrawList_PathClear_t0 = void function(ImDrawList* self);
alias ImDrawCmd_destroy_t0 = void function(ImDrawCmd* self);
alias igGetStateStorage_t0 = ImGuiStorage* function();
alias CustomRect_destroy_t0 = void function(CustomRect* self);
alias igInputInt2_t0 = bool function(char* label, int[2] v, ImGuiInputTextFlags flags);
alias igGetFrameHeight_t0 = float function();
alias igInputText_t0 = bool function(char* label, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data);
alias igTreeNodeExVStr_t0 = bool function(char* str_id, ImGuiTreeNodeFlags flags, char* fmt, va_list args);
alias igTreeNodeExVPtr_t1 = bool function(void* ptr_id, ImGuiTreeNodeFlags flags, char* fmt, va_list args);
alias igIsAnyItemFocused_t0 = bool function();
alias igPopStyleColor_t0 = void function(int count);
alias igColorEdit4_t0 = bool function(char* label, float[4] col, ImGuiColorEditFlags flags);
alias igGetCursorStartPos_t0 = ImVec2 function();
alias igGetCursorStartPos_nonUDT_t1 = void function(ImVec2* pOut);
alias ImGuiInputTextCallbackData_destroy_t0 = void function(ImGuiInputTextCallbackData* self);
alias ImFontAtlas_IsBuilt_t0 = bool function(ImFontAtlas* self);
alias ImGuiTextBuffer_begin_t0 = char* function(ImGuiTextBuffer* self);
alias ImVec4_ImVec4_t0 = ImVec4* function();
alias ImVec4_ImVec4Float_t1 = ImVec4* function(float _x, float _y, float _z, float _w);
alias ImFont_BuildLookupTable_t0 = void function(ImFont* self);
alias ImGuiTextBuffer_appendfv_t0 = void function(ImGuiTextBuffer* self, char* fmt, va_list args);
alias igDragInt4_t0 = bool function(char* label, int[4] v, float v_speed, int v_min, int v_max, char* format);
alias ImDrawList_PathLineToMergeDuplicate_t0 = void function(ImDrawList* self, ImVec2 pos);
alias ImGuiIO_ImGuiIO_t0 = ImGuiIO* function();
alias igBeginDragDropTarget_t0 = bool function();
alias ImGuiTextBuffer_clear_t0 = void function(ImGuiTextBuffer* self);
alias igIsWindowFocused_t0 = bool function(ImGuiFocusedFlags flags);
alias ImGuiIO_AddInputCharactersUTF8_t0 = void function(ImGuiIO* self, char* str);
alias igSetCurrentContext_t0 = void function(ImGuiContext* ctx);
alias igSliderInt4_t0 = bool function(char* label, int[4] v, int v_min, int v_max, char* format);
alias igGetItemRectMin_t0 = ImVec2 function();
alias igGetItemRectMin_nonUDT_t1 = void function(ImVec2* pOut);
alias ImDrawList_PrimReserve_t0 = void function(ImDrawList* self, int idx_count, int vtx_count);
alias ImDrawList_AddRectFilledMultiColor_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImU32 col_upr_left, ImU32 col_upr_right, ImU32 col_bot_right, ImU32 col_bot_left);
alias igSetStateStorage_t0 = void function(ImGuiStorage* storage);
alias ImGuiStorage_SetAllInt_t0 = void function(ImGuiStorage* self, int val);
alias ImGuiListClipper_Step_t0 = bool function(ImGuiListClipper* self);
alias ImGuiOnceUponAFrame_destroy_t0 = void function(ImGuiOnceUponAFrame* self);
alias ImGuiInputTextCallbackData_DeleteChars_t0 = void function(ImGuiInputTextCallbackData* self, int pos, int bytes_count);
alias ImGuiTextBuffer_empty_t0 = bool function(ImGuiTextBuffer* self);
alias igShowDemoWindow_t0 = void function(bool* p_open);
alias ImGuiStorage_SetVoidPtr_t0 = void function(ImGuiStorage* self, ImGuiID key, void* val);
alias ImDrawList_PushTextureID_t0 = void function(ImDrawList* self, ImTextureID texture_id);
alias ImDrawList_PathLineTo_t0 = void function(ImDrawList* self, ImVec2 pos);
alias ImDrawList_AddImageRounded_t0 = void function(ImDrawList* self, ImTextureID user_texture_id, ImVec2 a, ImVec2 b, ImVec2 uv_a, ImVec2 uv_b, ImU32 col, float rounding, int rounding_corners);
alias ImGuiStorage_BuildSortByKey_t0 = void function(ImGuiStorage* self);
alias ImDrawList_PathRect_t0 = void function(ImDrawList* self, ImVec2 rect_min, ImVec2 rect_max, float rounding, int rounding_corners_flags);
alias ImColor_destroy_t0 = void function(ImColor* self);
alias igColorEdit3_t0 = bool function(char* label, float[3] col, ImGuiColorEditFlags flags);
alias igShowMetricsWindow_t0 = void function(bool* p_open);
alias igLogFinish_t0 = void function();
alias igGetItemRectSize_t0 = ImVec2 function();
alias igGetItemRectSize_nonUDT_t1 = void function(ImVec2* pOut);
alias igDragScalarN_t0 = bool function(char* label, ImGuiDataType data_type, void* v, int components, float v_speed, void* v_min, void* v_max, char* format, float power);
alias ImDrawData_ImDrawData_t0 = ImDrawData* function();
alias igGetWindowWidth_t0 = float function();
alias igBulletTextV_t0 = void function(char* fmt, va_list args);
alias igPushTextWrapPos_t0 = void function(float wrap_local_pos_x);
alias ImGuiStorage_SetBool_t0 = void function(ImGuiStorage* self, ImGuiID key, bool val);
alias igAlignTextToFramePadding_t0 = void function();
alias igIsWindowHovered_t0 = bool function(ImGuiHoveredFlags flags);
alias ImDrawList_PathBezierCurveTo_t0 = void function(ImDrawList* self, ImVec2 p1, ImVec2 p2, ImVec2 p3, int num_segments);
alias igGetWindowContentRegionWidth_t0 = float function();
alias ImDrawList_PathArcTo_t0 = void function(ImDrawList* self, ImVec2 centre, float radius, float a_min, float a_max, int num_segments);
alias igIsAnyItemActive_t0 = bool function();
alias igStyleColorsDark_t0 = void function(ImGuiStyle* dst);
alias igGetTreeNodeToLabelSpacing_t0 = float function();
alias igSameLine_t0 = void function(float offset_from_start_x, float spacing);
alias igDummy_t0 = void function(ImVec2 size);
alias igImageButton_t0 = bool function(ImTextureID user_texture_id, ImVec2 size, ImVec2 uv0, ImVec2 uv1, int frame_padding, ImVec4 bg_col, ImVec4 tint_col);
alias igGetKeyPressedAmount_t0 = int function(int key_index, float repeat_delay, float rate);
alias igGetWindowContentRegionMax_t0 = ImVec2 function();
alias igGetWindowContentRegionMax_nonUDT_t1 = void function(ImVec2* pOut);
alias igSetNextWindowSizeConstraints_t0 = void function(ImVec2 size_min, ImVec2 size_max, ImGuiSizeCallback custom_callback, void* custom_callback_data);
alias ImFont_FindGlyphNoFallback_t0 = ImFontGlyph* function(ImFont* self, ImWchar c);
alias igShowStyleSelector_t0 = bool function(char* label);
alias igEndDragDropTarget_t0 = void function();
alias ImFontAtlas_Build_t0 = bool function(ImFontAtlas* self);
alias igIsKeyPressed_t0 = bool function(int user_key_index, bool repeat);
alias igEndTooltip_t0 = void function();
alias ImFont_IsLoaded_t0 = bool function(ImFont* self);
alias igBeginDragDropSource_t0 = bool function(ImGuiDragDropFlags flags);
alias igGetCursorPosX_t0 = float function();
alias igPushFont_t0 = void function(ImFont* font);
alias igSetScrollFromPosY_t0 = void function(float local_y, float center_y_ratio);
alias igAcceptDragDropPayload_t0 = ImGuiPayload* function(char* type, ImGuiDragDropFlags flags);
alias ImDrawList_PopClipRect_t0 = void function(ImDrawList* self);
alias igColorButton_t0 = bool function(char* desc_id, ImVec4 col, ImGuiColorEditFlags flags, ImVec2 size);
alias igEndMainMenuBar_t0 = void function();
alias igGetScrollMaxY_t0 = float function();
alias igIsItemActive_t0 = bool function();
alias igShowAboutWindow_t0 = void function(bool* p_open);
alias igSetNextItemWidth_t0 = void function(float item_width);
alias igGetContentRegionAvail_t0 = ImVec2 function();
alias igGetContentRegionAvail_nonUDT_t1 = void function(ImVec2* pOut);
alias ImGuiPayload_ImGuiPayload_t0 = ImGuiPayload* function();
alias igCheckbox_t0 = bool function(char* label, bool* v);
alias ImFontAtlas_destroy_t0 = void function(ImFontAtlas* self);
alias igPushStyleColorU32_t0 = void function(ImGuiCol idx, ImU32 col);
alias igPushStyleColor_t1 = void function(ImGuiCol idx, ImVec4 col);
alias ImVec2_destroy_t0 = void function(ImVec2* self);
alias igGetIDStr_t0 = ImGuiID function(char* str_id);
alias igGetIDRange_t1 = ImGuiID function(char* str_id_begin, char* str_id_end);
alias igGetIDPtr_t2 = ImGuiID function(void* ptr_id);
alias igSetColumnOffset_t0 = void function(int column_index, float offset_x);
alias igSetDragDropPayload_t0 = bool function(char* type, void* data, size_t sz, ImGuiCond cond);
alias ImFontAtlas_ImFontAtlas_t0 = ImFontAtlas* function();
alias igBeginGroup_t0 = void function();
alias igEndChildFrame_t0 = void function();
alias igGetContentRegionMax_t0 = ImVec2 function();
alias igGetContentRegionMax_nonUDT_t1 = void function(ImVec2* pOut);
alias ImDrawList_PushClipRectFullScreen_t0 = void function(ImDrawList* self);
alias igLoadIniSettingsFromMemory_t0 = void function(char* ini_data, size_t ini_size);
alias igGetBackgroundDrawList_t0 = ImDrawList* function();
alias igSetKeyboardFocusHere_t0 = void function(int offset);
alias igSetNextWindowSize_t0 = void function(ImVec2 size, ImGuiCond cond);
alias igIndent_t0 = void function(float indent_w);
alias igPopStyleVar_t0 = void function(int count);
alias igInputFloat3_t0 = bool function(char* label, float[3] v, char* format, ImGuiInputTextFlags flags);
alias igIsKeyDown_t0 = bool function(int user_key_index);
alias igTextV_t0 = void function(char* fmt, va_list args);
alias igTextUnformatted_t0 = void function(char* text, char* text_end);
alias ImGuiTextFilter_Draw_t0 = bool function(ImGuiTextFilter* self, char* label, float width);
alias igPushClipRect_t0 = void function(ImVec2 clip_rect_min, ImVec2 clip_rect_max, bool intersect_with_current_clip_rect);
alias igCollapsingHeader_t0 = bool function(char* label, ImGuiTreeNodeFlags flags);
alias igCollapsingHeaderBoolPtr_t1 = bool function(char* label, bool* p_open, ImGuiTreeNodeFlags flags);
alias igBeginMainMenuBar_t0 = bool function();
alias igSliderInt3_t0 = bool function(char* label, int[3] v, int v_min, int v_max, char* format);
alias igIsMouseReleased_t0 = bool function(int button);
alias ImGuiIO_AddInputCharacter_t0 = void function(ImGuiIO* self, ImWchar c);
alias igGetTextLineHeight_t0 = float function();
alias ImDrawList_AddQuadFilled_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 c, ImVec2 d, ImU32 col);
alias igSetNextWindowBgAlpha_t0 = void function(float alpha);
alias igBeginMenu_t0 = bool function(char* label, bool enabled);
alias ImGuiStorage_GetIntRef_t0 = int* function(ImGuiStorage* self, ImGuiID key, int default_val);
alias igEndCombo_t0 = void function();
alias igTreeNodeStr_t0 = bool function(char* label);
alias igTreeNodeStrStr_t1 = bool function(char* str_id, char* fmt, va_list args);
alias igTreeNodePtr_t2 = bool function(void* ptr_id, char* fmt, va_list args);
alias ImDrawList_AddPolyline_t0 = void function(ImDrawList* self, ImVec2* points, int num_points, ImU32 col, bool closed, float thickness);
alias igImage_t0 = void function(ImTextureID user_texture_id, ImVec2 size, ImVec2 uv0, ImVec2 uv1, ImVec4 tint_col, ImVec4 border_col);
alias igPopClipRect_t0 = void function();
alias ImDrawList_PushClipRect_t0 = void function(ImDrawList* self, ImVec2 clip_rect_min, ImVec2 clip_rect_max, bool intersect_with_current_clip_rect);
alias igSelectable_t0 = bool function(char* label, bool selected, ImGuiSelectableFlags flags, ImVec2 size);
alias igSelectableBoolPtr_t1 = bool function(char* label, bool* p_selected, ImGuiSelectableFlags flags, ImVec2 size);
alias ImDrawData_DeIndexAllBuffers_t0 = void function(ImDrawData* self);
alias ImDrawCmd_ImDrawCmd_t0 = ImDrawCmd* function();
alias ImDrawData_ScaleClipRects_t0 = void function(ImDrawData* self, ImVec2 fb_scale);
alias ImDrawList_AddTriangle_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 c, ImU32 col, float thickness);
alias igLogToFile_t0 = void function(int auto_open_depth, char* filename);
alias Pair_destroy_t0 = void function(Pair* self);
alias igCreateContext_t0 = ImGuiContext* function(ImFontAtlas* shared_font_atlas);
alias ImColor_ImColor_t0 = ImColor* function();
alias ImColor_ImColorInt_t1 = ImColor* function(int r, int g, int b, int a);
alias ImColor_ImColorU32_t2 = ImColor* function(ImU32 rgba);
alias ImColor_ImColorFloat_t3 = ImColor* function(float r, float g, float b, float a);
alias ImColor_ImColorVec4_t4 = ImColor* function(ImVec4 col);
alias TextRange_destroy_t0 = void function(TextRange* self);
alias ImDrawList_UpdateTextureID_t0 = void function(ImDrawList* self);
alias igGetWindowDrawList_t0 = ImDrawList* function();
alias igIsMousePosValid_t0 = bool function(ImVec2* mouse_pos);
alias ImGuiStorage_GetFloat_t0 = float function(ImGuiStorage* self, ImGuiID key, float default_val);
alias igSliderFloat4_t0 = bool function(char* label, float[4] v, float v_min, float v_max, char* format, float power);
alias igIsItemDeactivatedAfterEdit_t0 = bool function();
alias igTextWrappedV_t0 = void function(char* fmt, va_list args);
alias igShowStyleEditor_t0 = void function(ImGuiStyle* ref_);
alias igIsItemEdited_t0 = bool function();
alias igDebugCheckVersionAndDataLayout_t0 = bool function(char* version_str, size_t sz_io, size_t sz_style, size_t sz_vec2, size_t sz_vec4, size_t sz_drawvert, size_t sz_drawidx);
alias ImGuiTextBuffer_appendf_t0 = void function(ImGuiTextBuffer* self, char* fmt, va_list args);
alias ImFontAtlas_AddCustomRectFontGlyph_t0 = int function(ImFontAtlas* self, ImFont* font, ImWchar id, int width, int height, float advance_x, ImVec2 offset);
alias igInputTextWithHint_t0 = bool function(char* label, char* hint, char* buf, size_t buf_size, ImGuiInputTextFlags flags, ImGuiInputTextCallback callback, void* user_data);
alias ImGuiStorage_GetBoolRef_t0 = bool* function(ImGuiStorage* self, ImGuiID key, bool default_val);
alias igBeginPopupContextVoid_t0 = bool function(char* str_id, int mouse_button);
alias igSetScrollX_t0 = void function(float scroll_x);
alias igPlotHistogramFloatPtr_t0 = void function(char* label, float* values, int values_count, int values_offset, char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size, int stride);
alias igPlotHistogramFnPtr_t1 = void function(char* label, float function(void* data, int idx) values_getter, void* data, int values_count, int values_offset, char* overlay_text, float scale_min, float scale_max, ImVec2 graph_size);
alias igSliderInt2_t0 = bool function(char* label, int[2] v, int v_min, int v_max, char* format);
alias igIsMouseHoveringRect_t0 = bool function(ImVec2 r_min, ImVec2 r_max, bool clip);
alias ImGuiListClipper_Begin_t0 = void function(ImGuiListClipper* self, int items_count, float items_height);
alias igSliderInt_t0 = bool function(char* label, int* v, int v_min, int v_max, char* format);
alias igIsItemHovered_t0 = bool function(ImGuiHoveredFlags flags);
alias ImGuiIO_destroy_t0 = void function(ImGuiIO* self);
alias TextRange_begin_t0 = char* function(TextRange* self);
alias igEndDragDropSource_t0 = void function();
alias igGetDragDropPayload_t0 = ImGuiPayload* function();
alias ImGuiStorage_SetInt_t0 = void function(ImGuiStorage* self, ImGuiID key, int val);
alias igPopButtonRepeat_t0 = void function();
alias ImGuiStorage_GetInt_t0 = int function(ImGuiStorage* self, ImGuiID key, int default_val);
alias igShowFontSelector_t0 = void function(char* label);
alias igPushButtonRepeat_t0 = void function(bool repeat);
alias igColorConvertFloat4ToU32_t0 = ImU32 function(ImVec4 in_);
alias igTreePushStr_t0 = void function(char* str_id);
alias igTreePushPtr_t1 = void function(void* ptr_id);
alias igGetStyle_t0 = ImGuiStyle* function();
alias igGetCursorPos_t0 = ImVec2 function();
alias igGetCursorPos_nonUDT_t1 = void function(ImVec2* pOut);
alias igGetFrameCount_t0 = int function();
alias igIsItemActivated_t0 = bool function();
alias igEnd_t0 = void function();
alias ImFontAtlas_AddFontDefault_t0 = ImFont* function(ImFontAtlas* self, ImFontConfig* font_cfg);
alias igGetColumnsCount_t0 = int function();
alias igEndChild_t0 = void function();
alias ImGuiStyle_ScaleAllSizes_t0 = void function(ImGuiStyle* self, float scale_factor);
alias igArrowButton_t0 = bool function(char* str_id, ImGuiDir dir);
alias igSetCursorPosY_t0 = void function(float local_y);
alias igBeginPopupContextItem_t0 = bool function(char* str_id, int mouse_button);
alias ImGuiTextFilter_ImGuiTextFilter_t0 = ImGuiTextFilter* function(char* default_filter);
alias ImGuiStorage_SetFloat_t0 = void function(ImGuiStorage* self, ImGuiID key, float val);
alias igGetTime_t0 = double function();
alias igSliderScalarN_t0 = bool function(char* label, ImGuiDataType data_type, void* v, int components, void* v_min, void* v_max, char* format, float power);
alias ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon_t0 = ImWchar* function(ImFontAtlas* self);
alias igGetMousePosOnOpeningCurrentPopup_t0 = ImVec2 function();
alias igGetMousePosOnOpeningCurrentPopup_nonUDT_t1 = void function(ImVec2* pOut);
alias igVSliderScalar_t0 = bool function(char* label, ImVec2 size, ImGuiDataType data_type, void* v, void* v_min, void* v_max, char* format, float power);
alias ImFont_RenderChar_t0 = void function(ImFont* self, ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, ImWchar c);
alias ImFont_RenderText_t0 = void function(ImFont* self, ImDrawList* draw_list, float size, ImVec2 pos, ImU32 col, ImVec4 clip_rect, char* text_begin, char* text_end, float wrap_width, bool cpu_fine_clip);
alias ImFontAtlas_SetTexID_t0 = void function(ImFontAtlas* self, ImTextureID id);
alias ImFontAtlas_Clear_t0 = void function(ImFontAtlas* self);
alias ImGuiTextFilter_destroy_t0 = void function(ImGuiTextFilter* self);
alias igBeginPopupModal_t0 = bool function(char* name, bool* p_open, ImGuiWindowFlags flags);
alias igInputFloat_t0 = bool function(char* label, float* v, float step, float step_fast, char* format, ImGuiInputTextFlags flags);
alias igDragIntRange2_t0 = bool function(char* label, int* v_current_min, int* v_current_max, float v_speed, int v_min, int v_max, char* format, char* format_max);
alias ImDrawList_GetClipRectMax_t0 = ImVec2 function(ImDrawList* self);
alias ImDrawList_GetClipRectMax_nonUDT_t1 = void function(ImVec2* pOut, ImDrawList* self);
alias igInputFloat2_t0 = bool function(char* label, float[2] v, char* format, ImGuiInputTextFlags flags);
alias ImDrawList_ClearFreeMemory_t0 = void function(ImDrawList* self);
alias igSetTooltipV_t0 = void function(char* fmt, va_list args);
alias igVSliderInt_t0 = bool function(char* label, ImVec2 size, int* v, int v_min, int v_max, char* format);
alias ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder_t0 = ImFontGlyphRangesBuilder* function();
alias igPopTextWrapPos_t0 = void function();
alias ImDrawList_GetClipRectMin_t0 = ImVec2 function(ImDrawList* self);
alias ImDrawList_GetClipRectMin_nonUDT_t1 = void function(ImVec2* pOut, ImDrawList* self);
alias ImDrawList_PathStroke_t0 = void function(ImDrawList* self, ImU32 col, bool closed, float thickness);
alias igBeginTooltip_t0 = void function();
alias igOpenPopupOnItemClick_t0 = bool function(char* str_id, int mouse_button);
alias ImColor_HSV_t0 = ImColor function(ImColor* self, float h, float s, float v, float a);
alias ImColor_HSV_nonUDT_t1 = void function(ImColor* pOut, ImColor* self, float h, float s, float v, float a);
alias igSetTabItemClosed_t0 = void function(char* tab_or_docked_window_label);
alias ImFont_AddGlyph_t0 = void function(ImFont* self, ImWchar c, float x0, float y0, float x1, float y1, float u0, float v0, float u1, float v1, float advance_x);
alias ImFontGlyphRangesBuilder_AddText_t0 = void function(ImFontGlyphRangesBuilder* self, char* text, char* text_end);
alias ImGuiInputTextCallbackData_ImGuiInputTextCallbackData_t0 = ImGuiInputTextCallbackData* function();
alias igColorPicker4_t0 = bool function(char* label, float[4] col, ImGuiColorEditFlags flags, float* ref_col);
alias igColorConvertHSVtoRGB_t0 = void function(float h, float s, float v, ref float out_r, ref float out_g, ref float out_b);
alias igDragInt3_t0 = bool function(char* label, int[3] v, float v_speed, int v_min, int v_max, char* format);
alias ImDrawList_AddTriangleFilled_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 c, ImU32 col);
alias igNewFrame_t0 = void function();
alias ImDrawList_ChannelsSetCurrent_t0 = void function(ImDrawList* self, int channel_index);
alias igSliderFloat2_t0 = bool function(char* label, float[2] v, float v_min, float v_max, char* format, float power);
alias TextRange_end_t0 = char* function(TextRange* self);
alias ImDrawList_AddImageQuad_t0 = void function(ImDrawList* self, ImTextureID user_texture_id, ImVec2 a, ImVec2 b, ImVec2 c, ImVec2 d, ImVec2 uv_a, ImVec2 uv_b, ImVec2 uv_c, ImVec2 uv_d, ImU32 col);
alias ImFontAtlas_GetCustomRectByIndex_t0 = CustomRect* function(ImFontAtlas* self, int index);
alias ImFontAtlas_GetTexDataAsAlpha8_t0 = void function(ImFontAtlas* self, ubyte** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel);
alias igGetCursorScreenPos_t0 = ImVec2 function();
alias igGetCursorScreenPos_nonUDT_t1 = void function(ImVec2* pOut);
alias igPushAllowKeyboardFocus_t0 = void function(bool allow_keyboard_focus);
alias ImDrawList_PopTextureID_t0 = void function(ImDrawList* self);
alias igColumns_t0 = void function(int count, char* id, bool border);
alias ImFontGlyphRangesBuilder_AddChar_t0 = void function(ImFontGlyphRangesBuilder* self, ImWchar c);
alias igGetColumnIndex_t0 = int function();
alias ImDrawList_PrimVtx_t0 = void function(ImDrawList* self, ImVec2 pos, ImVec2 uv, ImU32 col);
alias ImDrawList_AddConvexPolyFilled_t0 = void function(ImDrawList* self, ImVec2* points, int num_points, ImU32 col);
alias igListBoxStr_arr_t0 = bool function(char* label, int* current_item, char*[] items, int items_count, int height_in_items);
alias igListBoxFnPtr_t1 = bool function(char* label, int* current_item, bool function(void* data, int idx, const char**) items_getter, void* data, int items_count, int height_in_items);
alias igTreeNodeVStr_t0 = bool function(char* str_id, char* fmt, va_list args);
alias igTreeNodeVPtr_t1 = bool function(void* ptr_id, char* fmt, va_list args);
alias ImGuiStorage_GetFloatRef_t0 = float* function(ImGuiStorage* self, ImGuiID key, float default_val);
alias TextRange_TextRange_t0 = TextRange* function();
alias TextRange_TextRangeStr_t1 = TextRange* function(char* _b, char* _e);
alias igValueBool_t0 = void function(char* prefix, bool b);
alias igValueInt_t1 = void function(char* prefix, int v);
alias igValueUint_t2 = void function(char* prefix, uint v);
alias igValueFloat_t3 = void function(char* prefix, float v, char* float_format);
alias igBeginTabItem_t0 = bool function(char* label, bool* p_open, ImGuiTabItemFlags flags);
alias igDragFloat4_t0 = bool function(char* label, float[4] v, float v_speed, float v_min, float v_max, char* format, float power);
alias igPushIDStr_t0 = void function(char* str_id);
alias igPushIDRange_t1 = void function(char* str_id_begin, char* str_id_end);
alias igPushIDPtr_t2 = void function(void* ptr_id);
alias igPushIDInt_t3 = void function(int int_id);
alias ImFontAtlas_AddFontFromMemoryTTF_t0 = ImFont* function(ImFontAtlas* self, void* font_data, int font_size, float size_pixels, ImFontConfig* font_cfg, ImWchar* glyph_ranges);
alias igTextDisabledV_t0 = void function(char* fmt, va_list args);
alias igInputScalar_t0 = bool function(char* label, ImGuiDataType data_type, void* v, void* step, void* step_fast, char* format, ImGuiInputTextFlags flags);
alias CustomRect_CustomRect_t0 = CustomRect* function();
alias Pair_PairInt_t0 = Pair* function(ImGuiID _key, int _val_i);
alias Pair_PairFloat_t1 = Pair* function(ImGuiID _key, float _val_f);
alias Pair_PairPtr_t2 = Pair* function(ImGuiID _key, void* _val_p);
alias ImColor_SetHSV_t0 = void function(ImColor* self, float h, float s, float v, float a);
alias igLogToTTY_t0 = void function(int auto_open_depth);
alias igIsItemVisible_t0 = bool function();
alias igRender_t0 = void function();
alias igBeginChild_t0 = bool function(char* str_id, ImVec2 size, bool border, ImGuiWindowFlags flags);
alias igBeginChildID_t1 = bool function(ImGuiID id, ImVec2 size, bool border, ImGuiWindowFlags flags);
alias igStyleColorsLight_t0 = void function(ImGuiStyle* dst);
alias igGetScrollX_t0 = float function();
alias ImFontAtlas_GetTexDataAsRGBA32_t0 = void function(ImFontAtlas* self, ubyte** out_pixels, int* out_width, int* out_height, int* out_bytes_per_pixel);
alias ImGuiOnceUponAFrame_ImGuiOnceUponAFrame_t0 = ImGuiOnceUponAFrame* function();
alias ImDrawData_destroy_t0 = void function(ImDrawData* self);
alias ImFont_SetFallbackChar_t0 = void function(ImFont* self, ImWchar c);
alias igSaveIniSettingsToMemory_t0 = char* function(size_t* out_ini_size);
alias igGetWindowHeight_t0 = float function();
alias ImGuiTextFilter_PassFilter_t0 = bool function(ImGuiTextFilter* self, char* text, char* text_end);
alias ImFontAtlas_AddFontFromMemoryCompressedBase85TTF_t0 = ImFont* function(ImFontAtlas* self, char* compressed_font_data_base85, float size_pixels, ImFontConfig* font_cfg, ImWchar* glyph_ranges);
alias ImFontAtlas_AddFontFromFileTTF_t0 = ImFont* function(ImFontAtlas* self, char* filename, float size_pixels, ImFontConfig* font_cfg, ImWchar* glyph_ranges);
alias igGetCurrentContext_t0 = ImGuiContext* function();
alias igColorConvertU32ToFloat4_t0 = ImVec4 function(ImU32 in_);
alias igColorConvertU32ToFloat4_nonUDT_t1 = void function(ImVec4* pOut, ImU32 in_);
alias ImDrawList_PathArcToFast_t0 = void function(ImDrawList* self, ImVec2 centre, float radius, int a_min_of_12, int a_max_of_12);
alias igDragFloat_t0 = bool function(char* label, float* v, float v_speed, float v_min, float v_max, char* format, float power);
alias igGetStyleColorName_t0 = char* function(ImGuiCol idx);
alias igSetItemDefaultFocus_t0 = void function();
alias igCalcListClipping_t0 = void function(int items_count, float items_height, int* out_items_display_start, int* out_items_display_end);
alias igSetNextWindowPos_t0 = void function(ImVec2 pos, ImGuiCond cond, ImVec2 pivot);
alias igDragFloat3_t0 = bool function(char* label, float[3] v, float v_speed, float v_min, float v_max, char* format, float power);
alias igCaptureKeyboardFromApp_t0 = void function(bool want_capture_keyboard_value);
alias igInputInt3_t0 = bool function(char* label, int[3] v, ImGuiInputTextFlags flags);
alias ImDrawData_Clear_t0 = void function(ImDrawData* self);
alias ImFontAtlas_AddFontFromMemoryCompressedTTF_t0 = ImFont* function(ImFontAtlas* self, void* compressed_font_data, int compressed_font_size, float size_pixels, ImFontConfig* font_cfg, ImWchar* glyph_ranges);
alias ImDrawList_AddText_t0 = void function(ImDrawList* self, ImVec2 pos, ImU32 col, char* text_begin, char* text_end);
alias ImDrawList_AddTextFontPtr_t1 = void function(ImDrawList* self, ImFont* font, float font_size, ImVec2 pos, ImU32 col, char* text_begin, char* text_end, float wrap_width, ImVec4* cpu_fine_clip_rect);
alias ImDrawList_PrimRectUV_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 uv_a, ImVec2 uv_b, ImU32 col);
alias ImDrawList_PrimWriteIdx_t0 = void function(ImDrawList* self, ImDrawIdx idx);
alias ImGuiStorage_GetBool_t0 = bool function(ImGuiStorage* self, ImGuiID key, bool default_val);
alias igTextWrapped_t0 = void function(char* fmt, va_list args);
alias igInputInt_t0 = bool function(char* label, int* v, int step, int step_fast, ImGuiInputTextFlags flags);
alias ImVec2_ImVec2_t0 = ImVec2* function();
alias ImVec2_ImVec2Float_t1 = ImVec2* function(float _x, float _y);
alias ImGuiTextBuffer_size_t0 = int function(ImGuiTextBuffer* self);
alias ImFontAtlas_GetGlyphRangesDefault_t0 = ImWchar* function(ImFontAtlas* self);
alias ImFontAtlas_ClearTexData_t0 = void function(ImFontAtlas* self);
alias ImFont_GetCharAdvance_t0 = float function(ImFont* self, ImWchar c);
alias igSliderFloat3_t0 = bool function(char* label, float[3] v, float v_min, float v_max, char* format, float power);
alias ImDrawList_AddBezierCurve_t0 = void function(ImDrawList* self, ImVec2 pos0, ImVec2 cp0, ImVec2 cp1, ImVec2 pos1, ImU32 col, float thickness, int num_segments);
alias ImDrawList_PathFillConvex_t0 = void function(ImDrawList* self, ImU32 col);
alias ImGuiTextBuffer_ImGuiTextBuffer_t0 = ImGuiTextBuffer* function();
alias igSliderAngle_t0 = bool function(char* label, float* v_rad, float v_degrees_min, float v_degrees_max, char* format);
alias igSetWindowPosVec2_t0 = void function(ImVec2 pos, ImGuiCond cond);
alias igSetWindowPosStr_t1 = void function(char* name, ImVec2 pos, ImGuiCond cond);
alias igSetScrollHereY_t0 = void function(float center_y_ratio);
alias ImDrawList_CloneOutput_t0 = ImDrawList* function(ImDrawList* self);
alias ImFontGlyphRangesBuilder_destroy_t0 = void function(ImFontGlyphRangesBuilder* self);
alias igProgressBar_t0 = void function(float fraction, ImVec2 size_arg, char* overlay);
alias igIsItemDeactivated_t0 = bool function();
alias igBulletText_t0 = void function(char* fmt, va_list args);
alias ImDrawList_AddQuad_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 c, ImVec2 d, ImU32 col, float thickness);
alias igGetColorU32_t0 = ImU32 function(ImGuiCol idx, float alpha_mul);
alias igGetColorU32Vec4_t1 = ImU32 function(ImVec4 col);
alias igGetColorU32U32_t2 = ImU32 function(ImU32 col);
alias ImDrawList_AddDrawCmd_t0 = void function(ImDrawList* self);
alias igSetCursorPosX_t0 = void function(float local_x);
alias igInputFloat4_t0 = bool function(char* label, float[4] v, char* format, ImGuiInputTextFlags flags);
alias igSeparator_t0 = void function();
alias igGetKeyIndex_t0 = int function(ImGuiKey imgui_key);
alias ImDrawList_PrimWriteVtx_t0 = void function(ImDrawList* self, ImVec2 pos, ImVec2 uv, ImU32 col);
alias ImGuiPayload_IsDataType_t0 = bool function(ImGuiPayload* self, char* type);
alias igSetWindowSizeVec2_t0 = void function(ImVec2 size, ImGuiCond cond);
alias igSetWindowSizeStr_t1 = void function(char* name, ImVec2 size, ImGuiCond cond);
alias igTreePop_t0 = void function();
alias ImFont_AddRemapChar_t0 = void function(ImFont* self, ImWchar dst, ImWchar src, bool overwrite_dst);
alias igText_t0 = void function(char* fmt, va_list args);
alias igIsItemFocused_t0 = bool function();
alias igMemAlloc_t0 = void* function(size_t size);
alias igColorPicker3_t0 = bool function(char* label, float[3] col, ImGuiColorEditFlags flags);
alias ImGuiTextBuffer_destroy_t0 = void function(ImGuiTextBuffer* self);
alias igGetColumnOffset_t0 = float function(int column_index);
alias igIsWindowCollapsed_t0 = bool function();
alias igBeginCombo_t0 = bool function(char* label, char* preview_value, ImGuiComboFlags flags);
alias igOpenPopup_t0 = void function(char* str_id);
alias igInputScalarN_t0 = bool function(char* label, ImGuiDataType data_type, void* v, int components, void* step, void* step_fast, char* format, ImGuiInputTextFlags flags);
alias igPopID_t0 = void function();
alias ImDrawList_PrimQuadUV_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImVec2 c, ImVec2 d, ImVec2 uv_a, ImVec2 uv_b, ImVec2 uv_c, ImVec2 uv_d, ImU32 col);
alias igEndTabBar_t0 = void function();
alias ImDrawList_AddImage_t0 = void function(ImDrawList* self, ImTextureID user_texture_id, ImVec2 a, ImVec2 b, ImVec2 uv_a, ImVec2 uv_b, ImU32 col);
alias igBeginTabBar_t0 = bool function(char* str_id, ImGuiTabBarFlags flags);
alias igGetCursorPosY_t0 = float function();
alias igCalcTextSize_t0 = ImVec2 function(char* text, char* text_end, bool hide_text_after_double_hash, float wrap_width);
alias igCalcTextSize_nonUDT_t1 = void function(ImVec2* pOut, char* text, char* text_end, bool hide_text_after_double_hash, float wrap_width);
alias ImFont_CalcTextSizeA_t0 = ImVec2 function(ImFont* self, float size, float max_width, float wrap_width, char* text_begin, char* text_end, char** remaining);
alias ImFont_CalcTextSizeA_nonUDT_t1 = void function(ImVec2* pOut, ImFont* self, float size, float max_width, float wrap_width, char* text_begin, char* text_end, char** remaining);
alias igPopAllowKeyboardFocus_t0 = void function();
alias igGetColumnWidth_t0 = float function(int column_index);
alias ImDrawList_Clear_t0 = void function(ImDrawList* self);
alias ImGuiPayload_Clear_t0 = void function(ImGuiPayload* self);
alias ImGuiTextBuffer_reserve_t0 = void function(ImGuiTextBuffer* self, int capacity);
alias igGetFontTexUvWhitePixel_t0 = ImVec2 function();
alias igGetFontTexUvWhitePixel_nonUDT_t1 = void function(ImVec2* pOut);
alias ImDrawList_ChannelsSplit_t0 = void function(ImDrawList* self, int channels_count);
alias igPopFont_t0 = void function();
alias ImDrawList_AddRect_t0 = void function(ImDrawList* self, ImVec2 a, ImVec2 b, ImU32 col, float rounding, int rounding_corners_flags, float thickness);
alias igGetDrawListSharedData_t0 = ImDrawListSharedData* function();
alias ImFontGlyphRangesBuilder_GetBit_t0 = bool function(ImFontGlyphRangesBuilder* self, int n);
alias ImFontAtlas_AddFont_t0 = ImFont* function(ImFontAtlas* self, ImFontConfig* font_cfg);
alias ImGui_ImplOpenGL3_DestroyFontsTexture_t0 = void function();
alias ImGui_ImplOpenGL3_CreateFontsTexture_t0 = bool function();
alias ImGui_ImplGlfw_NewFrame_t0 = void function();
alias ImGui_ImplGlfw_InitForVulkan_t0 = bool function(GLFWwindow* window, bool install_callbacks);
alias ImGui_ImplOpenGL3_CreateDeviceObjects_t0 = bool function();
alias ImGui_ImplGlfw_CharCallback_t0 = void function(GLFWwindow* window, uint c);
alias ImGui_ImplOpenGL3_Init_t0 = bool function(char* glsl_version);
alias ImGui_ImplOpenGL3_DestroyDeviceObjects_t0 = void function();
alias ImGui_ImplOpenGL3_NewFrame_t0 = void function();
alias ImGui_ImplGlfw_InitForOpenGL_t0 = bool function(GLFWwindow* window, bool install_callbacks);
alias ImGui_ImplGlfw_KeyCallback_t0 = void function(GLFWwindow* window, int key, int scancode, int action, int mods);
alias ImGui_ImplOpenGL3_Shutdown_t0 = void function();
alias ImGui_ImplGlfw_ScrollCallback_t0 = void function(GLFWwindow* window, double xoffset, double yoffset);
alias ImGui_ImplGlfw_MouseButtonCallback_t0 = void function(GLFWwindow* window, int button, int action, int mods);
alias ImGui_ImplGlfw_Shutdown_t0 = void function();
alias ImGui_ImplOpenGL3_RenderDrawData_t0 = void function(ImDrawData* draw_data);
}

__gshared {
dimgui_init_t0 dimgui_init;
ImDrawList_AddCircleFilled_t0 ImDrawList_AddCircleFilled;
igGetForegroundDrawList_t0 igGetForegroundDrawList;
ImFontAtlas_GetGlyphRangesChineseFull_t0 ImFontAtlas_GetGlyphRangesChineseFull;
igSliderFloat_t0 igSliderFloat;
ImFontAtlas_AddCustomRectRegular_t0 ImFontAtlas_AddCustomRectRegular;
igSetWindowFontScale_t0 igSetWindowFontScale;
ImFontAtlas_GetGlyphRangesThai_t0 ImFontAtlas_GetGlyphRangesThai;
ImFont_GrowIndex_t0 ImFont_GrowIndex;
ImFontAtlas_ClearInputData_t0 ImFontAtlas_ClearInputData;
igIsMouseDragging_t0 igIsMouseDragging;
ImGuiTextBuffer_end_t0 ImGuiTextBuffer_end;
igSetClipboardText_t0 igSetClipboardText;
igLoadIniSettingsFromDisk_t0 igLoadIniSettingsFromDisk;
igRadioButtonBool_t0 igRadioButtonBool;
igRadioButtonIntPtr_t1 igRadioButtonIntPtr;
ImGuiTextFilter_Clear_t0 ImGuiTextFilter_Clear;
igGetWindowPos_t0 igGetWindowPos;
igGetWindowPos_nonUDT_t1 igGetWindowPos_nonUDT;
ImGuiIO_ClearInputCharacters_t0 ImGuiIO_ClearInputCharacters;
igSpacing_t0 igSpacing;
CustomRect_IsPacked_t0 CustomRect_IsPacked;
ImGuiTextBuffer_c_str_t0 ImGuiTextBuffer_c_str;
igGetDrawData_t0 igGetDrawData;
igPopItemWidth_t0 igPopItemWidth;
igIsWindowAppearing_t0 igIsWindowAppearing;
igTreeAdvanceToLabelPos_t0 igTreeAdvanceToLabelPos;
ImGuiStorage_GetVoidPtr_t0 ImGuiStorage_GetVoidPtr;
igIsPopupOpen_t0 igIsPopupOpen;
igInputDouble_t0 igInputDouble;
igUnindent_t0 igUnindent;
igGetFontSize_t0 igGetFontSize;
ImFontAtlas_CalcCustomRectUV_t0 ImFontAtlas_CalcCustomRectUV;
igGetFrameHeightWithSpacing_t0 igGetFrameHeightWithSpacing;
igGetItemRectMax_t0 igGetItemRectMax;
igGetItemRectMax_nonUDT_t1 igGetItemRectMax_nonUDT;
igDragInt_t0 igDragInt;
igGetFont_t0 igGetFont;
igDragFloatRange2_t0 igDragFloatRange2;
ImGuiStorage_Clear_t0 ImGuiStorage_Clear;
igSetCursorScreenPos_t0 igSetCursorScreenPos;
ImFont_GetDebugName_t0 ImFont_GetDebugName;
igBeginPopupContextWindow_t0 igBeginPopupContextWindow;
ImGuiPayload_IsPreview_t0 ImGuiPayload_IsPreview;
igLabelTextV_t0 igLabelTextV;
igGetScrollMaxX_t0 igGetScrollMaxX;
igCloseCurrentPopup_t0 igCloseCurrentPopup;
igGetMouseDragDelta_t0 igGetMouseDragDelta;
igGetMouseDragDelta_nonUDT_t1 igGetMouseDragDelta_nonUDT;
igSetWindowCollapsedBool_t0 igSetWindowCollapsedBool;
igSetWindowCollapsedStr_t1 igSetWindowCollapsedStr;
igTextDisabled_t0 igTextDisabled;
igShowUserGuide_t0 igShowUserGuide;
igEndPopup_t0 igEndPopup;
igBeginChildFrame_t0 igBeginChildFrame;
ImGuiTextBuffer_append_t0 ImGuiTextBuffer_append;
igIsRectVisible_t0 igIsRectVisible;
igIsRectVisibleVec2_t1 igIsRectVisibleVec2;
ImGuiInputTextCallbackData_HasSelection_t0 ImGuiInputTextCallbackData_HasSelection;
igEndFrame_t0 igEndFrame;
igColorConvertRGBtoHSV_t0 igColorConvertRGBtoHSV;
igIsMouseClicked_t0 igIsMouseClicked;
igSetNextWindowFocus_t0 igSetNextWindowFocus;
igGetClipboardText_t0 igGetClipboardText;
igIsAnyItemHovered_t0 igIsAnyItemHovered;
ImGuiListClipper_ImGuiListClipper_t0 ImGuiListClipper_ImGuiListClipper;
igListBoxHeaderVec2_t0 igListBoxHeaderVec2;
igListBoxHeaderInt_t1 igListBoxHeaderInt;
igBeginPopup_t0 igBeginPopup;
igMenuItemBool_t0 igMenuItemBool;
igMenuItemBoolPtr_t1 igMenuItemBoolPtr;
igResetMouseDragDelta_t0 igResetMouseDragDelta;
igSaveIniSettingsToDisk_t0 igSaveIniSettingsToDisk;
ImFontConfig_destroy_t0 ImFontConfig_destroy;
ImGuiListClipper_End_t0 ImGuiListClipper_End;
igDestroyContext_t0 igDestroyContext;
ImDrawList_UpdateClipRect_t0 ImDrawList_UpdateClipRect;
igSetNextWindowContentSize_t0 igSetNextWindowContentSize;
TextRange_empty_t0 TextRange_empty;
igInputTextMultiline_t0 igInputTextMultiline;
ImGuiTextFilter_IsActive_t0 ImGuiTextFilter_IsActive;
ImFontAtlas_GetMouseCursorTexData_t0 ImFontAtlas_GetMouseCursorTexData;
igLogText_t0 igLogText;
igGetTextLineHeightWithSpacing_t0 igGetTextLineHeightWithSpacing;
igPushStyleVarFloat_t0 igPushStyleVarFloat;
igPushStyleVarVec2_t1 igPushStyleVarVec2;
igTextColoredV_t0 igTextColoredV;
ImFontAtlas_ClearFonts_t0 ImFontAtlas_ClearFonts;
igIsKeyReleased_t0 igIsKeyReleased;
igLogToClipboard_t0 igLogToClipboard;
ImFontAtlas_GetGlyphRangesKorean_t0 ImFontAtlas_GetGlyphRangesKorean;
ImFontGlyphRangesBuilder_SetBit_t0 ImFontGlyphRangesBuilder_SetBit;
igStyleColorsClassic_t0 igStyleColorsClassic;
igBegin_t0 igBegin;
igBeginMenuBar_t0 igBeginMenuBar;
igButton_t0 igButton;
igTextColored_t0 igTextColored;
igSliderScalar_t0 igSliderScalar;
igListBoxFooter_t0 igListBoxFooter;
igGetScrollY_t0 igGetScrollY;
igGetStyleColorVec4_t0 igGetStyleColorVec4;
igSetWindowFocus_t0 igSetWindowFocus;
igSetWindowFocusStr_t1 igSetWindowFocusStr;
igInvisibleButton_t0 igInvisibleButton;
ImGuiStyle_ImGuiStyle_t0 ImGuiStyle_ImGuiStyle;
igIsMouseDown_t0 igIsMouseDown;
ImFontConfig_ImFontConfig_t0 ImFontConfig_ImFontConfig;
igNewLine_t0 igNewLine;
igMemFree_t0 igMemFree;
igNextColumn_t0 igNextColumn;
igLogButtons_t0 igLogButtons;
igEndTabItem_t0 igEndTabItem;
ImFont_ClearOutputData_t0 ImFont_ClearOutputData;
ImFont_ImFont_t0 ImFont_ImFont;
igVSliderFloat_t0 igVSliderFloat;
igEndGroup_t0 igEndGroup;
igPlotLines_t0 igPlotLines;
igPlotLinesFnPtr_t1 igPlotLinesFnPtr;
igSetItemAllowOverlap_t0 igSetItemAllowOverlap;
ImGuiStorage_GetVoidPtrRef_t0 ImGuiStorage_GetVoidPtrRef;
igCheckboxFlags_t0 igCheckboxFlags;
ImFontGlyphRangesBuilder_AddRanges_t0 ImFontGlyphRangesBuilder_AddRanges;
ImFontAtlas_GetGlyphRangesVietnamese_t0 ImFontAtlas_GetGlyphRangesVietnamese;
igGetVersion_t0 igGetVersion;
ImDrawList_ImDrawList_t0 ImDrawList_ImDrawList;
ImGuiListClipper_destroy_t0 ImGuiListClipper_destroy;
igSetScrollY_t0 igSetScrollY;
ImFont_CalcWordWrapPositionA_t0 ImFont_CalcWordWrapPositionA;
igSmallButton_t0 igSmallButton;
igCombo_t0 igCombo;
igComboStr_t1 igComboStr;
igComboFnPtr_t2 igComboFnPtr;
ImDrawList_AddCircle_t0 ImDrawList_AddCircle;
ImDrawList_AddLine_t0 ImDrawList_AddLine;
igSetMouseCursor_t0 igSetMouseCursor;
igGetIO_t0 igGetIO;
ImGuiPayload_destroy_t0 ImGuiPayload_destroy;
igEndMenu_t0 igEndMenu;
ImDrawList_PrimRect_t0 ImDrawList_PrimRect;
ImDrawList_AddRectFilled_t0 ImDrawList_AddRectFilled;
igSetColorEditOptions_t0 igSetColorEditOptions;
igDragInt2_t0 igDragInt2;
igIsAnyMouseDown_t0 igIsAnyMouseDown;
ImGuiTextFilter_Build_t0 ImGuiTextFilter_Build;
igSetNextWindowCollapsed_t0 igSetNextWindowCollapsed;
ImFontAtlas_GetGlyphRangesCyrillic_t0 ImFontAtlas_GetGlyphRangesCyrillic;
ImGuiStyle_destroy_t0 ImGuiStyle_destroy;
ImDrawList_destroy_t0 ImDrawList_destroy;
ImVec4_destroy_t0 ImVec4_destroy;
igTreeNodeExStr_t0 igTreeNodeExStr;
igTreeNodeExStrStr_t1 igTreeNodeExStrStr;
igTreeNodeExPtr_t2 igTreeNodeExPtr;
igSetColumnWidth_t0 igSetColumnWidth;
igIsItemClicked_t0 igIsItemClicked;
ImDrawList_AddCallback_t0 ImDrawList_AddCallback;
igGetMousePos_t0 igGetMousePos;
igGetMousePos_nonUDT_t1 igGetMousePos_nonUDT;
igBullet_t0 igBullet;
igSetNextTreeNodeOpen_t0 igSetNextTreeNodeOpen;
igGetWindowContentRegionMin_t0 igGetWindowContentRegionMin;
igGetWindowContentRegionMin_nonUDT_t1 igGetWindowContentRegionMin_nonUDT;
igDragScalar_t0 igDragScalar;
igSetCursorPos_t0 igSetCursorPos;
igSetTooltip_t0 igSetTooltip;
igCalcItemWidth_t0 igCalcItemWidth;
igPushItemWidth_t0 igPushItemWidth;
igSetAllocatorFunctions_t0 igSetAllocatorFunctions;
ImDrawList_ChannelsMerge_t0 ImDrawList_ChannelsMerge;
ImFont_FindGlyph_t0 ImFont_FindGlyph;
ImGuiPayload_IsDelivery_t0 ImGuiPayload_IsDelivery;
ImFontAtlas_GetGlyphRangesJapanese_t0 ImFontAtlas_GetGlyphRangesJapanese;
igCaptureMouseFromApp_t0 igCaptureMouseFromApp;
ImGuiInputTextCallbackData_InsertChars_t0 ImGuiInputTextCallbackData_InsertChars;
igDragFloat2_t0 igDragFloat2;
ImFont_destroy_t0 ImFont_destroy;
igEndMenuBar_t0 igEndMenuBar;
igGetWindowSize_t0 igGetWindowSize;
igGetWindowSize_nonUDT_t1 igGetWindowSize_nonUDT;
igInputInt4_t0 igInputInt4;
igGetMouseCursor_t0 igGetMouseCursor;
igLabelText_t0 igLabelText;
igIsMouseDoubleClicked_t0 igIsMouseDoubleClicked;
ImDrawList_PathClear_t0 ImDrawList_PathClear;
ImDrawCmd_destroy_t0 ImDrawCmd_destroy;
igGetStateStorage_t0 igGetStateStorage;
CustomRect_destroy_t0 CustomRect_destroy;
igInputInt2_t0 igInputInt2;
igGetFrameHeight_t0 igGetFrameHeight;
igInputText_t0 igInputText;
igTreeNodeExVStr_t0 igTreeNodeExVStr;
igTreeNodeExVPtr_t1 igTreeNodeExVPtr;
igIsAnyItemFocused_t0 igIsAnyItemFocused;
igPopStyleColor_t0 igPopStyleColor;
igColorEdit4_t0 igColorEdit4;
igGetCursorStartPos_t0 igGetCursorStartPos;
igGetCursorStartPos_nonUDT_t1 igGetCursorStartPos_nonUDT;
ImGuiInputTextCallbackData_destroy_t0 ImGuiInputTextCallbackData_destroy;
ImFontAtlas_IsBuilt_t0 ImFontAtlas_IsBuilt;
ImGuiTextBuffer_begin_t0 ImGuiTextBuffer_begin;
ImVec4_ImVec4_t0 ImVec4_ImVec4;
ImVec4_ImVec4Float_t1 ImVec4_ImVec4Float;
ImFont_BuildLookupTable_t0 ImFont_BuildLookupTable;
ImGuiTextBuffer_appendfv_t0 ImGuiTextBuffer_appendfv;
igDragInt4_t0 igDragInt4;
ImDrawList_PathLineToMergeDuplicate_t0 ImDrawList_PathLineToMergeDuplicate;
ImGuiIO_ImGuiIO_t0 ImGuiIO_ImGuiIO;
igBeginDragDropTarget_t0 igBeginDragDropTarget;
ImGuiTextBuffer_clear_t0 ImGuiTextBuffer_clear;
igIsWindowFocused_t0 igIsWindowFocused;
ImGuiIO_AddInputCharactersUTF8_t0 ImGuiIO_AddInputCharactersUTF8;
igSetCurrentContext_t0 igSetCurrentContext;
igSliderInt4_t0 igSliderInt4;
igGetItemRectMin_t0 igGetItemRectMin;
igGetItemRectMin_nonUDT_t1 igGetItemRectMin_nonUDT;
ImDrawList_PrimReserve_t0 ImDrawList_PrimReserve;
ImDrawList_AddRectFilledMultiColor_t0 ImDrawList_AddRectFilledMultiColor;
igSetStateStorage_t0 igSetStateStorage;
ImGuiStorage_SetAllInt_t0 ImGuiStorage_SetAllInt;
ImGuiListClipper_Step_t0 ImGuiListClipper_Step;
ImGuiOnceUponAFrame_destroy_t0 ImGuiOnceUponAFrame_destroy;
ImGuiInputTextCallbackData_DeleteChars_t0 ImGuiInputTextCallbackData_DeleteChars;
ImGuiTextBuffer_empty_t0 ImGuiTextBuffer_empty;
igShowDemoWindow_t0 igShowDemoWindow;
ImGuiStorage_SetVoidPtr_t0 ImGuiStorage_SetVoidPtr;
ImDrawList_PushTextureID_t0 ImDrawList_PushTextureID;
ImDrawList_PathLineTo_t0 ImDrawList_PathLineTo;
ImDrawList_AddImageRounded_t0 ImDrawList_AddImageRounded;
ImGuiStorage_BuildSortByKey_t0 ImGuiStorage_BuildSortByKey;
ImDrawList_PathRect_t0 ImDrawList_PathRect;
ImColor_destroy_t0 ImColor_destroy;
igColorEdit3_t0 igColorEdit3;
igShowMetricsWindow_t0 igShowMetricsWindow;
igLogFinish_t0 igLogFinish;
igGetItemRectSize_t0 igGetItemRectSize;
igGetItemRectSize_nonUDT_t1 igGetItemRectSize_nonUDT;
igDragScalarN_t0 igDragScalarN;
ImDrawData_ImDrawData_t0 ImDrawData_ImDrawData;
igGetWindowWidth_t0 igGetWindowWidth;
igBulletTextV_t0 igBulletTextV;
igPushTextWrapPos_t0 igPushTextWrapPos;
ImGuiStorage_SetBool_t0 ImGuiStorage_SetBool;
igAlignTextToFramePadding_t0 igAlignTextToFramePadding;
igIsWindowHovered_t0 igIsWindowHovered;
ImDrawList_PathBezierCurveTo_t0 ImDrawList_PathBezierCurveTo;
igGetWindowContentRegionWidth_t0 igGetWindowContentRegionWidth;
ImDrawList_PathArcTo_t0 ImDrawList_PathArcTo;
igIsAnyItemActive_t0 igIsAnyItemActive;
igStyleColorsDark_t0 igStyleColorsDark;
igGetTreeNodeToLabelSpacing_t0 igGetTreeNodeToLabelSpacing;
igSameLine_t0 igSameLine;
igDummy_t0 igDummy;
igImageButton_t0 igImageButton;
igGetKeyPressedAmount_t0 igGetKeyPressedAmount;
igGetWindowContentRegionMax_t0 igGetWindowContentRegionMax;
igGetWindowContentRegionMax_nonUDT_t1 igGetWindowContentRegionMax_nonUDT;
igSetNextWindowSizeConstraints_t0 igSetNextWindowSizeConstraints;
ImFont_FindGlyphNoFallback_t0 ImFont_FindGlyphNoFallback;
igShowStyleSelector_t0 igShowStyleSelector;
igEndDragDropTarget_t0 igEndDragDropTarget;
ImFontAtlas_Build_t0 ImFontAtlas_Build;
igIsKeyPressed_t0 igIsKeyPressed;
igEndTooltip_t0 igEndTooltip;
ImFont_IsLoaded_t0 ImFont_IsLoaded;
igBeginDragDropSource_t0 igBeginDragDropSource;
igGetCursorPosX_t0 igGetCursorPosX;
igPushFont_t0 igPushFont;
igSetScrollFromPosY_t0 igSetScrollFromPosY;
igAcceptDragDropPayload_t0 igAcceptDragDropPayload;
ImDrawList_PopClipRect_t0 ImDrawList_PopClipRect;
igColorButton_t0 igColorButton;
igEndMainMenuBar_t0 igEndMainMenuBar;
igGetScrollMaxY_t0 igGetScrollMaxY;
igIsItemActive_t0 igIsItemActive;
igShowAboutWindow_t0 igShowAboutWindow;
igSetNextItemWidth_t0 igSetNextItemWidth;
igGetContentRegionAvail_t0 igGetContentRegionAvail;
igGetContentRegionAvail_nonUDT_t1 igGetContentRegionAvail_nonUDT;
ImGuiPayload_ImGuiPayload_t0 ImGuiPayload_ImGuiPayload;
igCheckbox_t0 igCheckbox;
ImFontAtlas_destroy_t0 ImFontAtlas_destroy;
igPushStyleColorU32_t0 igPushStyleColorU32;
igPushStyleColor_t1 igPushStyleColor;
ImVec2_destroy_t0 ImVec2_destroy;
igGetIDStr_t0 igGetIDStr;
igGetIDRange_t1 igGetIDRange;
igGetIDPtr_t2 igGetIDPtr;
igSetColumnOffset_t0 igSetColumnOffset;
igSetDragDropPayload_t0 igSetDragDropPayload;
ImFontAtlas_ImFontAtlas_t0 ImFontAtlas_ImFontAtlas;
igBeginGroup_t0 igBeginGroup;
igEndChildFrame_t0 igEndChildFrame;
igGetContentRegionMax_t0 igGetContentRegionMax;
igGetContentRegionMax_nonUDT_t1 igGetContentRegionMax_nonUDT;
ImDrawList_PushClipRectFullScreen_t0 ImDrawList_PushClipRectFullScreen;
igLoadIniSettingsFromMemory_t0 igLoadIniSettingsFromMemory;
igGetBackgroundDrawList_t0 igGetBackgroundDrawList;
igSetKeyboardFocusHere_t0 igSetKeyboardFocusHere;
igSetNextWindowSize_t0 igSetNextWindowSize;
igIndent_t0 igIndent;
igPopStyleVar_t0 igPopStyleVar;
igInputFloat3_t0 igInputFloat3;
igIsKeyDown_t0 igIsKeyDown;
igTextV_t0 igTextV;
igTextUnformatted_t0 igTextUnformatted;
ImGuiTextFilter_Draw_t0 ImGuiTextFilter_Draw;
igPushClipRect_t0 igPushClipRect;
igCollapsingHeader_t0 igCollapsingHeader;
igCollapsingHeaderBoolPtr_t1 igCollapsingHeaderBoolPtr;
igBeginMainMenuBar_t0 igBeginMainMenuBar;
igSliderInt3_t0 igSliderInt3;
igIsMouseReleased_t0 igIsMouseReleased;
ImGuiIO_AddInputCharacter_t0 ImGuiIO_AddInputCharacter;
igGetTextLineHeight_t0 igGetTextLineHeight;
ImDrawList_AddQuadFilled_t0 ImDrawList_AddQuadFilled;
igSetNextWindowBgAlpha_t0 igSetNextWindowBgAlpha;
igBeginMenu_t0 igBeginMenu;
ImGuiStorage_GetIntRef_t0 ImGuiStorage_GetIntRef;
igEndCombo_t0 igEndCombo;
igTreeNodeStr_t0 igTreeNodeStr;
igTreeNodeStrStr_t1 igTreeNodeStrStr;
igTreeNodePtr_t2 igTreeNodePtr;
ImDrawList_AddPolyline_t0 ImDrawList_AddPolyline;
igImage_t0 igImage;
igPopClipRect_t0 igPopClipRect;
ImDrawList_PushClipRect_t0 ImDrawList_PushClipRect;
igSelectable_t0 igSelectable;
igSelectableBoolPtr_t1 igSelectableBoolPtr;
ImDrawData_DeIndexAllBuffers_t0 ImDrawData_DeIndexAllBuffers;
ImDrawCmd_ImDrawCmd_t0 ImDrawCmd_ImDrawCmd;
ImDrawData_ScaleClipRects_t0 ImDrawData_ScaleClipRects;
ImDrawList_AddTriangle_t0 ImDrawList_AddTriangle;
igLogToFile_t0 igLogToFile;
Pair_destroy_t0 Pair_destroy;
igCreateContext_t0 igCreateContext;
ImColor_ImColor_t0 ImColor_ImColor;
ImColor_ImColorInt_t1 ImColor_ImColorInt;
ImColor_ImColorU32_t2 ImColor_ImColorU32;
ImColor_ImColorFloat_t3 ImColor_ImColorFloat;
ImColor_ImColorVec4_t4 ImColor_ImColorVec4;
TextRange_destroy_t0 TextRange_destroy;
ImDrawList_UpdateTextureID_t0 ImDrawList_UpdateTextureID;
igGetWindowDrawList_t0 igGetWindowDrawList;
igIsMousePosValid_t0 igIsMousePosValid;
ImGuiStorage_GetFloat_t0 ImGuiStorage_GetFloat;
igSliderFloat4_t0 igSliderFloat4;
igIsItemDeactivatedAfterEdit_t0 igIsItemDeactivatedAfterEdit;
igTextWrappedV_t0 igTextWrappedV;
igShowStyleEditor_t0 igShowStyleEditor;
igIsItemEdited_t0 igIsItemEdited;
igDebugCheckVersionAndDataLayout_t0 igDebugCheckVersionAndDataLayout;
ImGuiTextBuffer_appendf_t0 ImGuiTextBuffer_appendf;
ImFontAtlas_AddCustomRectFontGlyph_t0 ImFontAtlas_AddCustomRectFontGlyph;
igInputTextWithHint_t0 igInputTextWithHint;
ImGuiStorage_GetBoolRef_t0 ImGuiStorage_GetBoolRef;
igBeginPopupContextVoid_t0 igBeginPopupContextVoid;
igSetScrollX_t0 igSetScrollX;
igPlotHistogramFloatPtr_t0 igPlotHistogramFloatPtr;
igPlotHistogramFnPtr_t1 igPlotHistogramFnPtr;
igSliderInt2_t0 igSliderInt2;
igIsMouseHoveringRect_t0 igIsMouseHoveringRect;
ImGuiListClipper_Begin_t0 ImGuiListClipper_Begin;
igSliderInt_t0 igSliderInt;
igIsItemHovered_t0 igIsItemHovered;
ImGuiIO_destroy_t0 ImGuiIO_destroy;
TextRange_begin_t0 TextRange_begin;
igEndDragDropSource_t0 igEndDragDropSource;
igGetDragDropPayload_t0 igGetDragDropPayload;
ImGuiStorage_SetInt_t0 ImGuiStorage_SetInt;
igPopButtonRepeat_t0 igPopButtonRepeat;
ImGuiStorage_GetInt_t0 ImGuiStorage_GetInt;
igShowFontSelector_t0 igShowFontSelector;
igPushButtonRepeat_t0 igPushButtonRepeat;
igColorConvertFloat4ToU32_t0 igColorConvertFloat4ToU32;
igTreePushStr_t0 igTreePushStr;
igTreePushPtr_t1 igTreePushPtr;
igGetStyle_t0 igGetStyle;
igGetCursorPos_t0 igGetCursorPos;
igGetCursorPos_nonUDT_t1 igGetCursorPos_nonUDT;
igGetFrameCount_t0 igGetFrameCount;
igIsItemActivated_t0 igIsItemActivated;
igEnd_t0 igEnd;
ImFontAtlas_AddFontDefault_t0 ImFontAtlas_AddFontDefault;
igGetColumnsCount_t0 igGetColumnsCount;
igEndChild_t0 igEndChild;
ImGuiStyle_ScaleAllSizes_t0 ImGuiStyle_ScaleAllSizes;
igArrowButton_t0 igArrowButton;
igSetCursorPosY_t0 igSetCursorPosY;
igBeginPopupContextItem_t0 igBeginPopupContextItem;
ImGuiTextFilter_ImGuiTextFilter_t0 ImGuiTextFilter_ImGuiTextFilter;
ImGuiStorage_SetFloat_t0 ImGuiStorage_SetFloat;
igGetTime_t0 igGetTime;
igSliderScalarN_t0 igSliderScalarN;
ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon_t0 ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon;
igGetMousePosOnOpeningCurrentPopup_t0 igGetMousePosOnOpeningCurrentPopup;
igGetMousePosOnOpeningCurrentPopup_nonUDT_t1 igGetMousePosOnOpeningCurrentPopup_nonUDT;
igVSliderScalar_t0 igVSliderScalar;
ImFont_RenderChar_t0 ImFont_RenderChar;
ImFont_RenderText_t0 ImFont_RenderText;
ImFontAtlas_SetTexID_t0 ImFontAtlas_SetTexID;
ImFontAtlas_Clear_t0 ImFontAtlas_Clear;
ImGuiTextFilter_destroy_t0 ImGuiTextFilter_destroy;
igBeginPopupModal_t0 igBeginPopupModal;
igInputFloat_t0 igInputFloat;
igDragIntRange2_t0 igDragIntRange2;
ImDrawList_GetClipRectMax_t0 ImDrawList_GetClipRectMax;
ImDrawList_GetClipRectMax_nonUDT_t1 ImDrawList_GetClipRectMax_nonUDT;
igInputFloat2_t0 igInputFloat2;
ImDrawList_ClearFreeMemory_t0 ImDrawList_ClearFreeMemory;
igSetTooltipV_t0 igSetTooltipV;
igVSliderInt_t0 igVSliderInt;
ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder_t0 ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder;
igPopTextWrapPos_t0 igPopTextWrapPos;
ImDrawList_GetClipRectMin_t0 ImDrawList_GetClipRectMin;
ImDrawList_GetClipRectMin_nonUDT_t1 ImDrawList_GetClipRectMin_nonUDT;
ImDrawList_PathStroke_t0 ImDrawList_PathStroke;
igBeginTooltip_t0 igBeginTooltip;
igOpenPopupOnItemClick_t0 igOpenPopupOnItemClick;
ImColor_HSV_t0 ImColor_HSV;
ImColor_HSV_nonUDT_t1 ImColor_HSV_nonUDT;
igSetTabItemClosed_t0 igSetTabItemClosed;
ImFont_AddGlyph_t0 ImFont_AddGlyph;
ImFontGlyphRangesBuilder_AddText_t0 ImFontGlyphRangesBuilder_AddText;
ImGuiInputTextCallbackData_ImGuiInputTextCallbackData_t0 ImGuiInputTextCallbackData_ImGuiInputTextCallbackData;
igColorPicker4_t0 igColorPicker4;
igColorConvertHSVtoRGB_t0 igColorConvertHSVtoRGB;
igDragInt3_t0 igDragInt3;
ImDrawList_AddTriangleFilled_t0 ImDrawList_AddTriangleFilled;
igNewFrame_t0 igNewFrame;
ImDrawList_ChannelsSetCurrent_t0 ImDrawList_ChannelsSetCurrent;
igSliderFloat2_t0 igSliderFloat2;
TextRange_end_t0 TextRange_end;
ImDrawList_AddImageQuad_t0 ImDrawList_AddImageQuad;
ImFontAtlas_GetCustomRectByIndex_t0 ImFontAtlas_GetCustomRectByIndex;
ImFontAtlas_GetTexDataAsAlpha8_t0 ImFontAtlas_GetTexDataAsAlpha8;
igGetCursorScreenPos_t0 igGetCursorScreenPos;
igGetCursorScreenPos_nonUDT_t1 igGetCursorScreenPos_nonUDT;
igPushAllowKeyboardFocus_t0 igPushAllowKeyboardFocus;
ImDrawList_PopTextureID_t0 ImDrawList_PopTextureID;
igColumns_t0 igColumns;
ImFontGlyphRangesBuilder_AddChar_t0 ImFontGlyphRangesBuilder_AddChar;
igGetColumnIndex_t0 igGetColumnIndex;
ImDrawList_PrimVtx_t0 ImDrawList_PrimVtx;
ImDrawList_AddConvexPolyFilled_t0 ImDrawList_AddConvexPolyFilled;
igListBoxStr_arr_t0 igListBoxStr_arr;
igListBoxFnPtr_t1 igListBoxFnPtr;
igTreeNodeVStr_t0 igTreeNodeVStr;
igTreeNodeVPtr_t1 igTreeNodeVPtr;
ImGuiStorage_GetFloatRef_t0 ImGuiStorage_GetFloatRef;
TextRange_TextRange_t0 TextRange_TextRange;
TextRange_TextRangeStr_t1 TextRange_TextRangeStr;
igValueBool_t0 igValueBool;
igValueInt_t1 igValueInt;
igValueUint_t2 igValueUint;
igValueFloat_t3 igValueFloat;
igBeginTabItem_t0 igBeginTabItem;
igDragFloat4_t0 igDragFloat4;
igPushIDStr_t0 igPushIDStr;
igPushIDRange_t1 igPushIDRange;
igPushIDPtr_t2 igPushIDPtr;
igPushIDInt_t3 igPushIDInt;
ImFontAtlas_AddFontFromMemoryTTF_t0 ImFontAtlas_AddFontFromMemoryTTF;
igTextDisabledV_t0 igTextDisabledV;
igInputScalar_t0 igInputScalar;
CustomRect_CustomRect_t0 CustomRect_CustomRect;
Pair_PairInt_t0 Pair_PairInt;
Pair_PairFloat_t1 Pair_PairFloat;
Pair_PairPtr_t2 Pair_PairPtr;
ImColor_SetHSV_t0 ImColor_SetHSV;
igLogToTTY_t0 igLogToTTY;
igIsItemVisible_t0 igIsItemVisible;
igRender_t0 igRender;
igBeginChild_t0 igBeginChild;
igBeginChildID_t1 igBeginChildID;
igStyleColorsLight_t0 igStyleColorsLight;
igGetScrollX_t0 igGetScrollX;
ImFontAtlas_GetTexDataAsRGBA32_t0 ImFontAtlas_GetTexDataAsRGBA32;
ImGuiOnceUponAFrame_ImGuiOnceUponAFrame_t0 ImGuiOnceUponAFrame_ImGuiOnceUponAFrame;
ImDrawData_destroy_t0 ImDrawData_destroy;
ImFont_SetFallbackChar_t0 ImFont_SetFallbackChar;
igSaveIniSettingsToMemory_t0 igSaveIniSettingsToMemory;
igGetWindowHeight_t0 igGetWindowHeight;
ImGuiTextFilter_PassFilter_t0 ImGuiTextFilter_PassFilter;
ImFontAtlas_AddFontFromMemoryCompressedBase85TTF_t0 ImFontAtlas_AddFontFromMemoryCompressedBase85TTF;
ImFontAtlas_AddFontFromFileTTF_t0 ImFontAtlas_AddFontFromFileTTF;
igGetCurrentContext_t0 igGetCurrentContext;
igColorConvertU32ToFloat4_t0 igColorConvertU32ToFloat4;
igColorConvertU32ToFloat4_nonUDT_t1 igColorConvertU32ToFloat4_nonUDT;
ImDrawList_PathArcToFast_t0 ImDrawList_PathArcToFast;
igDragFloat_t0 igDragFloat;
igGetStyleColorName_t0 igGetStyleColorName;
igSetItemDefaultFocus_t0 igSetItemDefaultFocus;
igCalcListClipping_t0 igCalcListClipping;
igSetNextWindowPos_t0 igSetNextWindowPos;
igDragFloat3_t0 igDragFloat3;
igCaptureKeyboardFromApp_t0 igCaptureKeyboardFromApp;
igInputInt3_t0 igInputInt3;
ImDrawData_Clear_t0 ImDrawData_Clear;
ImFontAtlas_AddFontFromMemoryCompressedTTF_t0 ImFontAtlas_AddFontFromMemoryCompressedTTF;
ImDrawList_AddText_t0 ImDrawList_AddText;
ImDrawList_AddTextFontPtr_t1 ImDrawList_AddTextFontPtr;
ImDrawList_PrimRectUV_t0 ImDrawList_PrimRectUV;
ImDrawList_PrimWriteIdx_t0 ImDrawList_PrimWriteIdx;
ImGuiStorage_GetBool_t0 ImGuiStorage_GetBool;
igTextWrapped_t0 igTextWrapped;
igInputInt_t0 igInputInt;
ImVec2_ImVec2_t0 ImVec2_ImVec2;
ImVec2_ImVec2Float_t1 ImVec2_ImVec2Float;
ImGuiTextBuffer_size_t0 ImGuiTextBuffer_size;
ImFontAtlas_GetGlyphRangesDefault_t0 ImFontAtlas_GetGlyphRangesDefault;
ImFontAtlas_ClearTexData_t0 ImFontAtlas_ClearTexData;
ImFont_GetCharAdvance_t0 ImFont_GetCharAdvance;
igSliderFloat3_t0 igSliderFloat3;
ImDrawList_AddBezierCurve_t0 ImDrawList_AddBezierCurve;
ImDrawList_PathFillConvex_t0 ImDrawList_PathFillConvex;
ImGuiTextBuffer_ImGuiTextBuffer_t0 ImGuiTextBuffer_ImGuiTextBuffer;
igSliderAngle_t0 igSliderAngle;
igSetWindowPosVec2_t0 igSetWindowPosVec2;
igSetWindowPosStr_t1 igSetWindowPosStr;
igSetScrollHereY_t0 igSetScrollHereY;
ImDrawList_CloneOutput_t0 ImDrawList_CloneOutput;
ImFontGlyphRangesBuilder_destroy_t0 ImFontGlyphRangesBuilder_destroy;
igProgressBar_t0 igProgressBar;
igIsItemDeactivated_t0 igIsItemDeactivated;
igBulletText_t0 igBulletText;
ImDrawList_AddQuad_t0 ImDrawList_AddQuad;
igGetColorU32_t0 igGetColorU32;
igGetColorU32Vec4_t1 igGetColorU32Vec4;
igGetColorU32U32_t2 igGetColorU32U32;
ImDrawList_AddDrawCmd_t0 ImDrawList_AddDrawCmd;
igSetCursorPosX_t0 igSetCursorPosX;
igInputFloat4_t0 igInputFloat4;
igSeparator_t0 igSeparator;
igGetKeyIndex_t0 igGetKeyIndex;
ImDrawList_PrimWriteVtx_t0 ImDrawList_PrimWriteVtx;
ImGuiPayload_IsDataType_t0 ImGuiPayload_IsDataType;
igSetWindowSizeVec2_t0 igSetWindowSizeVec2;
igSetWindowSizeStr_t1 igSetWindowSizeStr;
igTreePop_t0 igTreePop;
ImFont_AddRemapChar_t0 ImFont_AddRemapChar;
igText_t0 igText;
igIsItemFocused_t0 igIsItemFocused;
igMemAlloc_t0 igMemAlloc;
igColorPicker3_t0 igColorPicker3;
ImGuiTextBuffer_destroy_t0 ImGuiTextBuffer_destroy;
igGetColumnOffset_t0 igGetColumnOffset;
igIsWindowCollapsed_t0 igIsWindowCollapsed;
igBeginCombo_t0 igBeginCombo;
igOpenPopup_t0 igOpenPopup;
igInputScalarN_t0 igInputScalarN;
igPopID_t0 igPopID;
ImDrawList_PrimQuadUV_t0 ImDrawList_PrimQuadUV;
igEndTabBar_t0 igEndTabBar;
ImDrawList_AddImage_t0 ImDrawList_AddImage;
igBeginTabBar_t0 igBeginTabBar;
igGetCursorPosY_t0 igGetCursorPosY;
igCalcTextSize_t0 igCalcTextSize;
igCalcTextSize_nonUDT_t1 igCalcTextSize_nonUDT;
ImFont_CalcTextSizeA_t0 ImFont_CalcTextSizeA;
ImFont_CalcTextSizeA_nonUDT_t1 ImFont_CalcTextSizeA_nonUDT;
igPopAllowKeyboardFocus_t0 igPopAllowKeyboardFocus;
igGetColumnWidth_t0 igGetColumnWidth;
ImDrawList_Clear_t0 ImDrawList_Clear;
ImGuiPayload_Clear_t0 ImGuiPayload_Clear;
ImGuiTextBuffer_reserve_t0 ImGuiTextBuffer_reserve;
igGetFontTexUvWhitePixel_t0 igGetFontTexUvWhitePixel;
igGetFontTexUvWhitePixel_nonUDT_t1 igGetFontTexUvWhitePixel_nonUDT;
ImDrawList_ChannelsSplit_t0 ImDrawList_ChannelsSplit;
igPopFont_t0 igPopFont;
ImDrawList_AddRect_t0 ImDrawList_AddRect;
igGetDrawListSharedData_t0 igGetDrawListSharedData;
ImFontGlyphRangesBuilder_GetBit_t0 ImFontGlyphRangesBuilder_GetBit;
ImFontAtlas_AddFont_t0 ImFontAtlas_AddFont;
ImGui_ImplOpenGL3_DestroyFontsTexture_t0 ImGui_ImplOpenGL3_DestroyFontsTexture;
ImGui_ImplOpenGL3_CreateFontsTexture_t0 ImGui_ImplOpenGL3_CreateFontsTexture;
ImGui_ImplGlfw_NewFrame_t0 ImGui_ImplGlfw_NewFrame;
ImGui_ImplGlfw_InitForVulkan_t0 ImGui_ImplGlfw_InitForVulkan;
ImGui_ImplOpenGL3_CreateDeviceObjects_t0 ImGui_ImplOpenGL3_CreateDeviceObjects;
ImGui_ImplGlfw_CharCallback_t0 ImGui_ImplGlfw_CharCallback;
ImGui_ImplOpenGL3_Init_t0 ImGui_ImplOpenGL3_Init;
ImGui_ImplOpenGL3_DestroyDeviceObjects_t0 ImGui_ImplOpenGL3_DestroyDeviceObjects;
ImGui_ImplOpenGL3_NewFrame_t0 ImGui_ImplOpenGL3_NewFrame;
ImGui_ImplGlfw_InitForOpenGL_t0 ImGui_ImplGlfw_InitForOpenGL;
ImGui_ImplGlfw_KeyCallback_t0 ImGui_ImplGlfw_KeyCallback;
ImGui_ImplOpenGL3_Shutdown_t0 ImGui_ImplOpenGL3_Shutdown;
ImGui_ImplGlfw_ScrollCallback_t0 ImGui_ImplGlfw_ScrollCallback;
ImGui_ImplGlfw_MouseButtonCallback_t0 ImGui_ImplGlfw_MouseButtonCallback;
ImGui_ImplGlfw_Shutdown_t0 ImGui_ImplGlfw_Shutdown;
ImGui_ImplOpenGL3_RenderDrawData_t0 ImGui_ImplOpenGL3_RenderDrawData;
}

extern(C) @nogc nothrow {
enum {
    ImGuiStyleVar_Alpha = 0,
    ImGuiStyleVar_WindowPadding = 1,
    ImGuiStyleVar_WindowRounding = 2,
    ImGuiStyleVar_WindowBorderSize = 3,
    ImGuiStyleVar_WindowMinSize = 4,
    ImGuiStyleVar_WindowTitleAlign = 5,
    ImGuiStyleVar_ChildRounding = 6,
    ImGuiStyleVar_ChildBorderSize = 7,
    ImGuiStyleVar_PopupRounding = 8,
    ImGuiStyleVar_PopupBorderSize = 9,
    ImGuiStyleVar_FramePadding = 10,
    ImGuiStyleVar_FrameRounding = 11,
    ImGuiStyleVar_FrameBorderSize = 12,
    ImGuiStyleVar_ItemSpacing = 13,
    ImGuiStyleVar_ItemInnerSpacing = 14,
    ImGuiStyleVar_IndentSpacing = 15,
    ImGuiStyleVar_ScrollbarSize = 16,
    ImGuiStyleVar_ScrollbarRounding = 17,
    ImGuiStyleVar_GrabMinSize = 18,
    ImGuiStyleVar_GrabRounding = 19,
    ImGuiStyleVar_TabRounding = 20,
    ImGuiStyleVar_ButtonTextAlign = 21,
    ImGuiStyleVar_SelectableTextAlign = 22,
    ImGuiStyleVar_COUNT = 23,
}

enum {
    ImDrawCornerFlags_TopLeft = 1 << 0,
    ImDrawCornerFlags_TopRight = 1 << 1,
    ImDrawCornerFlags_BotLeft = 1 << 2,
    ImDrawCornerFlags_BotRight = 1 << 3,
    ImDrawCornerFlags_Top = ImDrawCornerFlags_TopLeft | ImDrawCornerFlags_TopRight,
    ImDrawCornerFlags_Bot = ImDrawCornerFlags_BotLeft | ImDrawCornerFlags_BotRight,
    ImDrawCornerFlags_Left = ImDrawCornerFlags_TopLeft | ImDrawCornerFlags_BotLeft,
    ImDrawCornerFlags_Right = ImDrawCornerFlags_TopRight | ImDrawCornerFlags_BotRight,
    ImDrawCornerFlags_All = 0xF,
}

enum {
    ImGuiFocusedFlags_None = 0,
    ImGuiFocusedFlags_ChildWindows = 1 << 0,
    ImGuiFocusedFlags_RootWindow = 1 << 1,
    ImGuiFocusedFlags_AnyWindow = 1 << 2,
    ImGuiFocusedFlags_RootAndChildWindows = ImGuiFocusedFlags_RootWindow | ImGuiFocusedFlags_ChildWindows,
}

enum {
    ImGuiComboFlags_None = 0,
    ImGuiComboFlags_PopupAlignLeft = 1 << 0,
    ImGuiComboFlags_HeightSmall = 1 << 1,
    ImGuiComboFlags_HeightRegular = 1 << 2,
    ImGuiComboFlags_HeightLarge = 1 << 3,
    ImGuiComboFlags_HeightLargest = 1 << 4,
    ImGuiComboFlags_NoArrowButton = 1 << 5,
    ImGuiComboFlags_NoPreview = 1 << 6,
    ImGuiComboFlags_HeightMask_ = ImGuiComboFlags_HeightSmall | ImGuiComboFlags_HeightRegular | ImGuiComboFlags_HeightLarge | ImGuiComboFlags_HeightLargest,
}

enum {
    ImGuiConfigFlags_None = 0,
    ImGuiConfigFlags_NavEnableKeyboard = 1 << 0,
    ImGuiConfigFlags_NavEnableGamepad = 1 << 1,
    ImGuiConfigFlags_NavEnableSetMousePos = 1 << 2,
    ImGuiConfigFlags_NavNoCaptureKeyboard = 1 << 3,
    ImGuiConfigFlags_NoMouse = 1 << 4,
    ImGuiConfigFlags_NoMouseCursorChange = 1 << 5,
    ImGuiConfigFlags_IsSRGB = 1 << 20,
    ImGuiConfigFlags_IsTouchScreen = 1 << 21,
}

enum {
    ImGuiBackendFlags_None = 0,
    ImGuiBackendFlags_HasGamepad = 1 << 0,
    ImGuiBackendFlags_HasMouseCursors = 1 << 1,
    ImGuiBackendFlags_HasSetMousePos = 1 << 2,
}

enum {
    ImFontAtlasFlags_None = 0,
    ImFontAtlasFlags_NoPowerOfTwoHeight = 1 << 0,
    ImFontAtlasFlags_NoMouseCursors = 1 << 1,
}

enum {
    ImGuiDataType_S8 = 0,
    ImGuiDataType_U8 = 1,
    ImGuiDataType_S16 = 2,
    ImGuiDataType_U16 = 3,
    ImGuiDataType_S32 = 4,
    ImGuiDataType_U32 = 5,
    ImGuiDataType_S64 = 6,
    ImGuiDataType_U64 = 7,
    ImGuiDataType_Float = 8,
    ImGuiDataType_Double = 9,
    ImGuiDataType_COUNT = 10,
}

enum {
    ImGuiKey_Tab = 0,
    ImGuiKey_LeftArrow = 1,
    ImGuiKey_RightArrow = 2,
    ImGuiKey_UpArrow = 3,
    ImGuiKey_DownArrow = 4,
    ImGuiKey_PageUp = 5,
    ImGuiKey_PageDown = 6,
    ImGuiKey_Home = 7,
    ImGuiKey_End = 8,
    ImGuiKey_Insert = 9,
    ImGuiKey_Delete = 10,
    ImGuiKey_Backspace = 11,
    ImGuiKey_Space = 12,
    ImGuiKey_Enter = 13,
    ImGuiKey_Escape = 14,
    ImGuiKey_A = 15,
    ImGuiKey_C = 16,
    ImGuiKey_V = 17,
    ImGuiKey_X = 18,
    ImGuiKey_Y = 19,
    ImGuiKey_Z = 20,
    ImGuiKey_COUNT = 21,
}

enum {
    ImGuiWindowFlags_None = 0,
    ImGuiWindowFlags_NoTitleBar = 1 << 0,
    ImGuiWindowFlags_NoResize = 1 << 1,
    ImGuiWindowFlags_NoMove = 1 << 2,
    ImGuiWindowFlags_NoScrollbar = 1 << 3,
    ImGuiWindowFlags_NoScrollWithMouse = 1 << 4,
    ImGuiWindowFlags_NoCollapse = 1 << 5,
    ImGuiWindowFlags_AlwaysAutoResize = 1 << 6,
    ImGuiWindowFlags_NoBackground = 1 << 7,
    ImGuiWindowFlags_NoSavedSettings = 1 << 8,
    ImGuiWindowFlags_NoMouseInputs = 1 << 9,
    ImGuiWindowFlags_MenuBar = 1 << 10,
    ImGuiWindowFlags_HorizontalScrollbar = 1 << 11,
    ImGuiWindowFlags_NoFocusOnAppearing = 1 << 12,
    ImGuiWindowFlags_NoBringToFrontOnFocus = 1 << 13,
    ImGuiWindowFlags_AlwaysVerticalScrollbar = 1 << 14,
    ImGuiWindowFlags_AlwaysHorizontalScrollbar = 1<< 15,
    ImGuiWindowFlags_AlwaysUseWindowPadding = 1 << 16,
    ImGuiWindowFlags_NoNavInputs = 1 << 18,
    ImGuiWindowFlags_NoNavFocus = 1 << 19,
    ImGuiWindowFlags_UnsavedDocument = 1 << 20,
    ImGuiWindowFlags_NoNav = ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_NoDecoration = ImGuiWindowFlags_NoTitleBar | ImGuiWindowFlags_NoResize | ImGuiWindowFlags_NoScrollbar | ImGuiWindowFlags_NoCollapse,
    ImGuiWindowFlags_NoInputs = ImGuiWindowFlags_NoMouseInputs | ImGuiWindowFlags_NoNavInputs | ImGuiWindowFlags_NoNavFocus,
    ImGuiWindowFlags_NavFlattened = 1 << 23,
    ImGuiWindowFlags_ChildWindow = 1 << 24,
    ImGuiWindowFlags_Tooltip = 1 << 25,
    ImGuiWindowFlags_Popup = 1 << 26,
    ImGuiWindowFlags_Modal = 1 << 27,
    ImGuiWindowFlags_ChildMenu = 1 << 28,
}

enum {
    ImGuiCol_Text = 0,
    ImGuiCol_TextDisabled = 1,
    ImGuiCol_WindowBg = 2,
    ImGuiCol_ChildBg = 3,
    ImGuiCol_PopupBg = 4,
    ImGuiCol_Border = 5,
    ImGuiCol_BorderShadow = 6,
    ImGuiCol_FrameBg = 7,
    ImGuiCol_FrameBgHovered = 8,
    ImGuiCol_FrameBgActive = 9,
    ImGuiCol_TitleBg = 10,
    ImGuiCol_TitleBgActive = 11,
    ImGuiCol_TitleBgCollapsed = 12,
    ImGuiCol_MenuBarBg = 13,
    ImGuiCol_ScrollbarBg = 14,
    ImGuiCol_ScrollbarGrab = 15,
    ImGuiCol_ScrollbarGrabHovered = 16,
    ImGuiCol_ScrollbarGrabActive = 17,
    ImGuiCol_CheckMark = 18,
    ImGuiCol_SliderGrab = 19,
    ImGuiCol_SliderGrabActive = 20,
    ImGuiCol_Button = 21,
    ImGuiCol_ButtonHovered = 22,
    ImGuiCol_ButtonActive = 23,
    ImGuiCol_Header = 24,
    ImGuiCol_HeaderHovered = 25,
    ImGuiCol_HeaderActive = 26,
    ImGuiCol_Separator = 27,
    ImGuiCol_SeparatorHovered = 28,
    ImGuiCol_SeparatorActive = 29,
    ImGuiCol_ResizeGrip = 30,
    ImGuiCol_ResizeGripHovered = 31,
    ImGuiCol_ResizeGripActive = 32,
    ImGuiCol_Tab = 33,
    ImGuiCol_TabHovered = 34,
    ImGuiCol_TabActive = 35,
    ImGuiCol_TabUnfocused = 36,
    ImGuiCol_TabUnfocusedActive = 37,
    ImGuiCol_PlotLines = 38,
    ImGuiCol_PlotLinesHovered = 39,
    ImGuiCol_PlotHistogram = 40,
    ImGuiCol_PlotHistogramHovered = 41,
    ImGuiCol_TextSelectedBg = 42,
    ImGuiCol_DragDropTarget = 43,
    ImGuiCol_NavHighlight = 44,
    ImGuiCol_NavWindowingHighlight = 45,
    ImGuiCol_NavWindowingDimBg = 46,
    ImGuiCol_ModalWindowDimBg = 47,
    ImGuiCol_COUNT = 48,
}

enum {
    ImGuiDragDropFlags_None = 0,
    ImGuiDragDropFlags_SourceNoPreviewTooltip = 1 << 0,
    ImGuiDragDropFlags_SourceNoDisableHover = 1 << 1,
    ImGuiDragDropFlags_SourceNoHoldToOpenOthers = 1 << 2,
    ImGuiDragDropFlags_SourceAllowNullID = 1 << 3,
    ImGuiDragDropFlags_SourceExtern = 1 << 4,
    ImGuiDragDropFlags_SourceAutoExpirePayload = 1 << 5,
    ImGuiDragDropFlags_AcceptBeforeDelivery = 1 << 10,
    ImGuiDragDropFlags_AcceptNoDrawDefaultRect = 1 << 11,
    ImGuiDragDropFlags_AcceptNoPreviewTooltip = 1 << 12,
    ImGuiDragDropFlags_AcceptPeekOnly = ImGuiDragDropFlags_AcceptBeforeDelivery | ImGuiDragDropFlags_AcceptNoDrawDefaultRect,
}

enum {
    ImGuiDir_None = -1,
    ImGuiDir_Left = 0,
    ImGuiDir_Right = 1,
    ImGuiDir_Up = 2,
    ImGuiDir_Down = 3,
    ImGuiDir_COUNT = 4,
}

enum {
    ImGuiNavInput_Activate = 0,
    ImGuiNavInput_Cancel = 1,
    ImGuiNavInput_Input = 2,
    ImGuiNavInput_Menu = 3,
    ImGuiNavInput_DpadLeft = 4,
    ImGuiNavInput_DpadRight = 5,
    ImGuiNavInput_DpadUp = 6,
    ImGuiNavInput_DpadDown = 7,
    ImGuiNavInput_LStickLeft = 8,
    ImGuiNavInput_LStickRight = 9,
    ImGuiNavInput_LStickUp = 10,
    ImGuiNavInput_LStickDown = 11,
    ImGuiNavInput_FocusPrev = 12,
    ImGuiNavInput_FocusNext = 13,
    ImGuiNavInput_TweakSlow = 14,
    ImGuiNavInput_TweakFast = 15,
    ImGuiNavInput_KeyMenu_ = 16,
    ImGuiNavInput_KeyTab_ = 17,
    ImGuiNavInput_KeyLeft_ = 18,
    ImGuiNavInput_KeyRight_ = 19,
    ImGuiNavInput_KeyUp_ = 20,
    ImGuiNavInput_KeyDown_ = 21,
    ImGuiNavInput_COUNT = 22,
    ImGuiNavInput_InternalStart_ = ImGuiNavInput_KeyMenu_,
}

enum {
    ImGuiColorEditFlags_None = 0,
    ImGuiColorEditFlags_NoAlpha = 1 << 1,
    ImGuiColorEditFlags_NoPicker = 1 << 2,
    ImGuiColorEditFlags_NoOptions = 1 << 3,
    ImGuiColorEditFlags_NoSmallPreview = 1 << 4,
    ImGuiColorEditFlags_NoInputs = 1 << 5,
    ImGuiColorEditFlags_NoTooltip = 1 << 6,
    ImGuiColorEditFlags_NoLabel = 1 << 7,
    ImGuiColorEditFlags_NoSidePreview = 1 << 8,
    ImGuiColorEditFlags_NoDragDrop = 1 << 9,
    ImGuiColorEditFlags_AlphaBar = 1 << 16,
    ImGuiColorEditFlags_AlphaPreview = 1 << 17,
    ImGuiColorEditFlags_AlphaPreviewHalf = 1 << 18,
    ImGuiColorEditFlags_HDR = 1 << 19,
    ImGuiColorEditFlags_DisplayRGB = 1 << 20,
    ImGuiColorEditFlags_DisplayHSV = 1 << 21,
    ImGuiColorEditFlags_DisplayHex = 1 << 22,
    ImGuiColorEditFlags_Uint8 = 1 << 23,
    ImGuiColorEditFlags_Float = 1 << 24,
    ImGuiColorEditFlags_PickerHueBar = 1 << 25,
    ImGuiColorEditFlags_PickerHueWheel = 1 << 26,
    ImGuiColorEditFlags_InputRGB = 1 << 27,
    ImGuiColorEditFlags_InputHSV = 1 << 28,
    ImGuiColorEditFlags__OptionsDefault = ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_DisplayRGB|ImGuiColorEditFlags_InputRGB|ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags__DisplayMask = ImGuiColorEditFlags_DisplayRGB|ImGuiColorEditFlags_DisplayHSV|ImGuiColorEditFlags_DisplayHex,
    ImGuiColorEditFlags__DataTypeMask = ImGuiColorEditFlags_Uint8|ImGuiColorEditFlags_Float,
    ImGuiColorEditFlags__PickerMask = ImGuiColorEditFlags_PickerHueWheel|ImGuiColorEditFlags_PickerHueBar,
    ImGuiColorEditFlags__InputMask = ImGuiColorEditFlags_InputRGB|ImGuiColorEditFlags_InputHSV,
}

enum {
    ImGuiTreeNodeFlags_None = 0,
    ImGuiTreeNodeFlags_Selected = 1 << 0,
    ImGuiTreeNodeFlags_Framed = 1 << 1,
    ImGuiTreeNodeFlags_AllowItemOverlap = 1 << 2,
    ImGuiTreeNodeFlags_NoTreePushOnOpen = 1 << 3,
    ImGuiTreeNodeFlags_NoAutoOpenOnLog = 1 << 4,
    ImGuiTreeNodeFlags_DefaultOpen = 1 << 5,
    ImGuiTreeNodeFlags_OpenOnDoubleClick = 1 << 6,
    ImGuiTreeNodeFlags_OpenOnArrow = 1 << 7,
    ImGuiTreeNodeFlags_Leaf = 1 << 8,
    ImGuiTreeNodeFlags_Bullet = 1 << 9,
    ImGuiTreeNodeFlags_FramePadding = 1 << 10,
    ImGuiTreeNodeFlags_NavLeftJumpsBackHere = 1 << 13,
    ImGuiTreeNodeFlags_CollapsingHeader = ImGuiTreeNodeFlags_Framed | ImGuiTreeNodeFlags_NoTreePushOnOpen | ImGuiTreeNodeFlags_NoAutoOpenOnLog,
}

enum {
    ImGuiMouseCursor_None = -1,
    ImGuiMouseCursor_Arrow = 0,
    ImGuiMouseCursor_TextInput = 1,
    ImGuiMouseCursor_ResizeAll = 2,
    ImGuiMouseCursor_ResizeNS = 3,
    ImGuiMouseCursor_ResizeEW = 4,
    ImGuiMouseCursor_ResizeNESW = 5,
    ImGuiMouseCursor_ResizeNWSE = 6,
    ImGuiMouseCursor_Hand = 7,
    ImGuiMouseCursor_COUNT = 8,
}

enum {
    ImDrawListFlags_None = 0,
    ImDrawListFlags_AntiAliasedLines = 1 << 0,
    ImDrawListFlags_AntiAliasedFill = 1 << 1,
}

enum {
    ImGuiTabBarFlags_None = 0,
    ImGuiTabBarFlags_Reorderable = 1 << 0,
    ImGuiTabBarFlags_AutoSelectNewTabs = 1 << 1,
    ImGuiTabBarFlags_TabListPopupButton = 1 << 2,
    ImGuiTabBarFlags_NoCloseWithMiddleMouseButton = 1 << 3,
    ImGuiTabBarFlags_NoTabListScrollingButtons = 1 << 4,
    ImGuiTabBarFlags_NoTooltip = 1 << 5,
    ImGuiTabBarFlags_FittingPolicyResizeDown = 1 << 6,
    ImGuiTabBarFlags_FittingPolicyScroll = 1 << 7,
    ImGuiTabBarFlags_FittingPolicyMask_ = ImGuiTabBarFlags_FittingPolicyResizeDown | ImGuiTabBarFlags_FittingPolicyScroll,
    ImGuiTabBarFlags_FittingPolicyDefault_ = ImGuiTabBarFlags_FittingPolicyResizeDown,
}

enum {
    ImGuiInputTextFlags_None = 0,
    ImGuiInputTextFlags_CharsDecimal = 1 << 0,
    ImGuiInputTextFlags_CharsHexadecimal = 1 << 1,
    ImGuiInputTextFlags_CharsUppercase = 1 << 2,
    ImGuiInputTextFlags_CharsNoBlank = 1 << 3,
    ImGuiInputTextFlags_AutoSelectAll = 1 << 4,
    ImGuiInputTextFlags_EnterReturnsTrue = 1 << 5,
    ImGuiInputTextFlags_CallbackCompletion = 1 << 6,
    ImGuiInputTextFlags_CallbackHistory = 1 << 7,
    ImGuiInputTextFlags_CallbackAlways = 1 << 8,
    ImGuiInputTextFlags_CallbackCharFilter = 1 << 9,
    ImGuiInputTextFlags_AllowTabInput = 1 << 10,
    ImGuiInputTextFlags_CtrlEnterForNewLine = 1 << 11,
    ImGuiInputTextFlags_NoHorizontalScroll = 1 << 12,
    ImGuiInputTextFlags_AlwaysInsertMode = 1 << 13,
    ImGuiInputTextFlags_ReadOnly = 1 << 14,
    ImGuiInputTextFlags_Password = 1 << 15,
    ImGuiInputTextFlags_NoUndoRedo = 1 << 16,
    ImGuiInputTextFlags_CharsScientific = 1 << 17,
    ImGuiInputTextFlags_CallbackResize = 1 << 18,
    ImGuiInputTextFlags_Multiline = 1 << 20,
}

enum {
    ImGuiTabItemFlags_None = 0,
    ImGuiTabItemFlags_UnsavedDocument = 1 << 0,
    ImGuiTabItemFlags_SetSelected = 1 << 1,
    ImGuiTabItemFlags_NoCloseWithMiddleMouseButton = 1 << 2,
    ImGuiTabItemFlags_NoPushId = 1 << 3,
}

enum {
    ImGuiCond_Always = 1 << 0,
    ImGuiCond_Once = 1 << 1,
    ImGuiCond_FirstUseEver = 1 << 2,
    ImGuiCond_Appearing = 1 << 3,
}

enum {
    ImGuiSelectableFlags_None = 0,
    ImGuiSelectableFlags_DontClosePopups = 1 << 0,
    ImGuiSelectableFlags_SpanAllColumns = 1 << 1,
    ImGuiSelectableFlags_AllowDoubleClick = 1 << 2,
    ImGuiSelectableFlags_Disabled = 1 << 3,
}

enum {
    ImGuiHoveredFlags_None = 0,
    ImGuiHoveredFlags_ChildWindows = 1 << 0,
    ImGuiHoveredFlags_RootWindow = 1 << 1,
    ImGuiHoveredFlags_AnyWindow = 1 << 2,
    ImGuiHoveredFlags_AllowWhenBlockedByPopup = 1 << 3,
    ImGuiHoveredFlags_AllowWhenBlockedByActiveItem = 1 << 5,
    ImGuiHoveredFlags_AllowWhenOverlapped = 1 << 6,
    ImGuiHoveredFlags_AllowWhenDisabled = 1 << 7,
    ImGuiHoveredFlags_RectOnly = ImGuiHoveredFlags_AllowWhenBlockedByPopup | ImGuiHoveredFlags_AllowWhenBlockedByActiveItem | ImGuiHoveredFlags_AllowWhenOverlapped,
    ImGuiHoveredFlags_RootAndChildWindows = ImGuiHoveredFlags_RootWindow | ImGuiHoveredFlags_ChildWindows,
}


struct ImGuiSizeCallbackData {
    void* UserData;
    ImVec2 Pos;
    ImVec2 CurrentSize;
    ImVec2 DesiredSize;
}

struct CustomRect {
    uint ID;
    ushort Width;
    ushort Height;
    ushort X;
    ushort Y;
    float GlyphAdvanceX;
    ImVec2 GlyphOffset;
    ImFont* Font;
}

struct ImFontGlyphRangesBuilder {
}

struct ImGuiIO {
    ImGuiConfigFlags ConfigFlags;
    ImGuiBackendFlags BackendFlags;
    ImVec2 DisplaySize;
    float DeltaTime;
    float IniSavingRate;
    char* IniFilename;
    char* LogFilename;
    float MouseDoubleClickTime;
    float MouseDoubleClickMaxDist;
    float MouseDragThreshold;
    int[ImGuiKey_COUNT] KeyMap;
    float KeyRepeatDelay;
    float KeyRepeatRate;
    void* UserData;
    ImFontAtlas* Fonts;
    float FontGlobalScale;
    bool FontAllowUserScaling;
    ImFont* FontDefault;
    ImVec2 DisplayFramebufferScale;
    bool MouseDrawCursor;
    bool ConfigMacOSXBehaviors;
    bool ConfigInputTextCursorBlink;
    bool ConfigWindowsResizeFromEdges;
    bool ConfigWindowsMoveFromTitleBarOnly;
    char* BackendPlatformName;
    char* BackendRendererName;
    void* BackendPlatformUserData;
    void* BackendRendererUserData;
    void* BackendLanguageUserData;
    char* GetClipboardTextFn(void* user_data);
    void SetClipboardTextFn(void* user_data, char* text);
    void* ClipboardUserData;
    void ImeSetInputScreenPosFn(int x, int y);
    void* ImeWindowHandle;
    void* RenderDrawListsFnUnused;
    ImVec2 MousePos;
    bool[5] MouseDown;
    float MouseWheel;
    float MouseWheelH;
    bool KeyCtrl;
    bool KeyShift;
    bool KeyAlt;
    bool KeySuper;
    bool[512] KeysDown;
    float[ImGuiNavInput_COUNT] NavInputs;
    bool WantCaptureMouse;
    bool WantCaptureKeyboard;
    bool WantTextInput;
    bool WantSetMousePos;
    bool WantSaveIniSettings;
    bool NavActive;
    bool NavVisible;
    float Framerate;
    int MetricsRenderVertices;
    int MetricsRenderIndices;
    int MetricsRenderWindows;
    int MetricsActiveWindows;
    int MetricsActiveAllocations;
    ImVec2 MouseDelta;
    ImVec2 MousePosPrev;
    ImVec2[5] MouseClickedPos;
    double[5] MouseClickedTime;
    bool[5] MouseClicked;
    bool[5] MouseDoubleClicked;
    bool[5] MouseReleased;
    bool[5] MouseDownOwned;
    bool[5] MouseDownWasDoubleClick;
    float[5] MouseDownDuration;
    float[5] MouseDownDurationPrev;
    ImVec2[5] MouseDragMaxDistanceAbs;
    float[5] MouseDragMaxDistanceSqr;
    float[512] KeysDownDuration;
    float[512] KeysDownDurationPrev;
    float[ImGuiNavInput_COUNT] NavInputsDownDuration;
    float[ImGuiNavInput_COUNT] NavInputsDownDurationPrev;
}

struct ImGuiTextFilter {
    char[256] InputBuf;
    int CountGrep;
}

struct ImVec2 {
    float x;
    float y;
}

struct ImGuiPayload {
    void* Data;
    int DataSize;
    ImGuiID SourceId;
    ImGuiID SourceParentId;
    int DataFrameCount;
    char[32+1] DataType;
    bool Preview;
    bool Delivery;
}

struct ImDrawVert {
    ImVec2 pos;
    ImVec2 uv;
    ImU32 col;
}

struct ImGuiInputTextCallbackData {
    ImGuiInputTextFlags EventFlag;
    ImGuiInputTextFlags Flags;
    void* UserData;
    ImWchar EventChar;
    ImGuiKey EventKey;
    char* Buf;
    int BufTextLen;
    int BufSize;
    bool BufDirty;
    int CursorPos;
    int SelectionStart;
    int SelectionEnd;
}

struct ImColor {
    ImVec4 Value;
}

struct ImFontGlyph {
    ImWchar Codepoint;
    float AdvanceX;
    float X0;
    float Y0;
    float X1;
    float Y1;
    float U0;
    float V0;
    float U1;
    float V1;
}

struct Pair {
    ImGuiID key;
    union { int val_i; float val_f; void* val_p;} ;
}

struct ImFontAtlas {
    bool Locked;
    ImFontAtlasFlags Flags;
    ImTextureID TexID;
    int TexDesiredWidth;
    int TexGlyphPadding;
    ubyte* TexPixelsAlpha8;
    uint* TexPixelsRGBA32;
    int TexWidth;
    int TexHeight;
    ImVec2 TexUvScale;
    ImVec2 TexUvWhitePixel;
    int[1] CustomRectIds;
}

struct ImGuiStyle {
    float Alpha;
    ImVec2 WindowPadding;
    float WindowRounding;
    float WindowBorderSize;
    ImVec2 WindowMinSize;
    ImVec2 WindowTitleAlign;
    float ChildRounding;
    float ChildBorderSize;
    float PopupRounding;
    float PopupBorderSize;
    ImVec2 FramePadding;
    float FrameRounding;
    float FrameBorderSize;
    ImVec2 ItemSpacing;
    ImVec2 ItemInnerSpacing;
    ImVec2 TouchExtraPadding;
    float IndentSpacing;
    float ColumnsMinSpacing;
    float ScrollbarSize;
    float ScrollbarRounding;
    float GrabMinSize;
    float GrabRounding;
    float TabRounding;
    float TabBorderSize;
    ImVec2 ButtonTextAlign;
    ImVec2 SelectableTextAlign;
    ImVec2 DisplayWindowPadding;
    ImVec2 DisplaySafeAreaPadding;
    float MouseCursorScale;
    bool AntiAliasedLines;
    bool AntiAliasedFill;
    float CurveTessellationTol;
    ImVec4[ImGuiCol_COUNT] Colors;
}

struct ImFontConfig {
    void* FontData;
    int FontDataSize;
    bool FontDataOwnedByAtlas;
    int FontNo;
    float SizePixels;
    int OversampleH;
    int OversampleV;
    bool PixelSnapH;
    ImVec2 GlyphExtraSpacing;
    ImVec2 GlyphOffset;
    ImWchar* GlyphRanges;
    float GlyphMinAdvanceX;
    float GlyphMaxAdvanceX;
    bool MergeMode;
    uint RasterizerFlags;
    float RasterizerMultiply;
    char[40] Name;
    ImFont* DstFont;
}

struct ImDrawData {
    bool Valid;
    ImDrawList** CmdLists;
    int CmdListsCount;
    int TotalIdxCount;
    int TotalVtxCount;
    ImVec2 DisplayPos;
    ImVec2 DisplaySize;
    ImVec2 FramebufferScale;
}

struct ImFont {
    float FallbackAdvanceX;
    float FontSize;
    ImFontGlyph* FallbackGlyph;
    ImVec2 DisplayOffset;
    ImFontAtlas* ContainerAtlas;
    ImFontConfig* ConfigData;
    short ConfigDataCount;
    ImWchar FallbackChar;
    float Scale;
    float Ascent;
    float Descent;
    int MetricsTotalSurface;
    bool DirtyLookupTables;
}

struct ImGuiOnceUponAFrame {
    int RefFrame;
}

struct ImVec4 {
    float x;
    float y;
    float z;
    float w;
}

struct ImDrawList {
    ImDrawListFlags Flags;
    ImDrawListSharedData* _Data;
    char* _OwnerName;
    uint _VtxCurrentIdx;
    ImDrawVert* _VtxWritePtr;
    ImDrawIdx* _IdxWritePtr;
    int _ChannelsCurrent;
    int _ChannelsCount;
}

struct ImDrawChannel {
}

struct ImDrawCmd {
    uint ElemCount;
    ImVec4 ClipRect;
    ImTextureID TextureId;
    ImDrawCallback UserCallback;
    void* UserCallbackData;
}

struct ImGuiTextBuffer {
}

struct ImGuiListClipper {
    float StartPosY;
    float ItemsHeight;
    int ItemsCount;
    int StepNo;
    int DisplayStart;
    int DisplayEnd;
}

struct TextRange {
    char* b;
    char* e;
}

struct ImGuiStorage {
}


}

alias int ImDrawCornerFlags;
alias int ImGuiComboFlags;
alias int ImGuiTreeNodeFlags;
alias int ImGuiFocusedFlags;
alias int ImGuiDataType;
alias int ImGuiDragDropFlags;
alias ushort ImWchar;
alias int ImGuiConfigFlags;
alias uint ImGuiID;
alias int ImS32;
alias int ImGuiCol;
alias uint ImU32;
alias int ImGuiHoveredFlags;
alias int ImGuiSelectableFlags;
alias int ImDrawListFlags;
alias ImGuiSizeCallback = void function(ImGuiSizeCallbackData* data);
struct ImGuiContext;
alias ImGuiInputTextCallback = int function(ImGuiInputTextCallbackData *data);
alias void* ImTextureID;
alias int ImGuiKey;
struct ImDrawListSharedData;
alias int ImGuiMouseCursor;
alias int ImGuiColumnsFlags;
alias int ImGuiBackendFlags;
alias int ImGuiTabBarFlags;
alias ushort ImDrawIdx;
alias int ImGuiTabItemFlags;
alias int ImGuiWindowFlags;
alias int ImGuiStyleVar;
alias int ImGuiDir;
alias int ImGuiCond;
alias int ImGuiNavInput;
alias ushort ImU16;
alias int ImGuiInputTextFlags;
alias byte ImS8;
alias ImDrawCallback = void function(ImDrawList* parent_list, ImDrawCmd* cmd);
alias int ImS64;
alias int ImFontAtlasFlags;
alias short ImS16;
alias int ImGuiColorEditFlags;
alias uint ImU64;
alias ubyte ImU8;

import core.sys.posix.dlfcn;
import std.string;

void* get_shared_handle(string shared_library) {
    return dlopen(toStringz(shared_library), RTLD_NOW);
}

T bind(T)(void* handle, string name) {
    import std.stdio;
    auto r = cast(T)dlsym(handle, toStringz(name));
    if (!r) {
        writeln("Could not find symbol " ~ name);
    }
    return r;
}
bool dimgui_load_lib(string shared_library) {

    auto handle = get_shared_handle(shared_library);
    if (!handle) {
        return false;
    }
    dimgui_init = bind!dimgui_init_t0(handle, "dimgui_init");
    ImDrawList_AddCircleFilled = bind!ImDrawList_AddCircleFilled_t0(handle, "ImDrawList_AddCircleFilled");
    igGetForegroundDrawList = bind!igGetForegroundDrawList_t0(handle, "igGetForegroundDrawList");
    ImFontAtlas_GetGlyphRangesChineseFull = bind!ImFontAtlas_GetGlyphRangesChineseFull_t0(handle, "ImFontAtlas_GetGlyphRangesChineseFull");
    igSliderFloat = bind!igSliderFloat_t0(handle, "igSliderFloat");
    ImFontAtlas_AddCustomRectRegular = bind!ImFontAtlas_AddCustomRectRegular_t0(handle, "ImFontAtlas_AddCustomRectRegular");
    igSetWindowFontScale = bind!igSetWindowFontScale_t0(handle, "igSetWindowFontScale");
    ImFontAtlas_GetGlyphRangesThai = bind!ImFontAtlas_GetGlyphRangesThai_t0(handle, "ImFontAtlas_GetGlyphRangesThai");
    ImFont_GrowIndex = bind!ImFont_GrowIndex_t0(handle, "ImFont_GrowIndex");
    ImFontAtlas_ClearInputData = bind!ImFontAtlas_ClearInputData_t0(handle, "ImFontAtlas_ClearInputData");
    igIsMouseDragging = bind!igIsMouseDragging_t0(handle, "igIsMouseDragging");
    ImGuiTextBuffer_end = bind!ImGuiTextBuffer_end_t0(handle, "ImGuiTextBuffer_end");
    igSetClipboardText = bind!igSetClipboardText_t0(handle, "igSetClipboardText");
    igLoadIniSettingsFromDisk = bind!igLoadIniSettingsFromDisk_t0(handle, "igLoadIniSettingsFromDisk");
    igRadioButtonBool = bind!igRadioButtonBool_t0(handle, "igRadioButtonBool");
    igRadioButtonIntPtr = bind!igRadioButtonIntPtr_t1(handle, "igRadioButtonIntPtr");
    ImGuiTextFilter_Clear = bind!ImGuiTextFilter_Clear_t0(handle, "ImGuiTextFilter_Clear");
    igGetWindowPos = bind!igGetWindowPos_t0(handle, "igGetWindowPos");
    igGetWindowPos_nonUDT = bind!igGetWindowPos_nonUDT_t1(handle, "igGetWindowPos_nonUDT");
    ImGuiIO_ClearInputCharacters = bind!ImGuiIO_ClearInputCharacters_t0(handle, "ImGuiIO_ClearInputCharacters");
    igSpacing = bind!igSpacing_t0(handle, "igSpacing");
    CustomRect_IsPacked = bind!CustomRect_IsPacked_t0(handle, "CustomRect_IsPacked");
    ImGuiTextBuffer_c_str = bind!ImGuiTextBuffer_c_str_t0(handle, "ImGuiTextBuffer_c_str");
    igGetDrawData = bind!igGetDrawData_t0(handle, "igGetDrawData");
    igPopItemWidth = bind!igPopItemWidth_t0(handle, "igPopItemWidth");
    igIsWindowAppearing = bind!igIsWindowAppearing_t0(handle, "igIsWindowAppearing");
    igTreeAdvanceToLabelPos = bind!igTreeAdvanceToLabelPos_t0(handle, "igTreeAdvanceToLabelPos");
    ImGuiStorage_GetVoidPtr = bind!ImGuiStorage_GetVoidPtr_t0(handle, "ImGuiStorage_GetVoidPtr");
    igIsPopupOpen = bind!igIsPopupOpen_t0(handle, "igIsPopupOpen");
    igInputDouble = bind!igInputDouble_t0(handle, "igInputDouble");
    igUnindent = bind!igUnindent_t0(handle, "igUnindent");
    igGetFontSize = bind!igGetFontSize_t0(handle, "igGetFontSize");
    ImFontAtlas_CalcCustomRectUV = bind!ImFontAtlas_CalcCustomRectUV_t0(handle, "ImFontAtlas_CalcCustomRectUV");
    igGetFrameHeightWithSpacing = bind!igGetFrameHeightWithSpacing_t0(handle, "igGetFrameHeightWithSpacing");
    igGetItemRectMax = bind!igGetItemRectMax_t0(handle, "igGetItemRectMax");
    igGetItemRectMax_nonUDT = bind!igGetItemRectMax_nonUDT_t1(handle, "igGetItemRectMax_nonUDT");
    igDragInt = bind!igDragInt_t0(handle, "igDragInt");
    igGetFont = bind!igGetFont_t0(handle, "igGetFont");
    igDragFloatRange2 = bind!igDragFloatRange2_t0(handle, "igDragFloatRange2");
    ImGuiStorage_Clear = bind!ImGuiStorage_Clear_t0(handle, "ImGuiStorage_Clear");
    igSetCursorScreenPos = bind!igSetCursorScreenPos_t0(handle, "igSetCursorScreenPos");
    ImFont_GetDebugName = bind!ImFont_GetDebugName_t0(handle, "ImFont_GetDebugName");
    igBeginPopupContextWindow = bind!igBeginPopupContextWindow_t0(handle, "igBeginPopupContextWindow");
    ImGuiPayload_IsPreview = bind!ImGuiPayload_IsPreview_t0(handle, "ImGuiPayload_IsPreview");
    igLabelTextV = bind!igLabelTextV_t0(handle, "igLabelTextV");
    igGetScrollMaxX = bind!igGetScrollMaxX_t0(handle, "igGetScrollMaxX");
    igCloseCurrentPopup = bind!igCloseCurrentPopup_t0(handle, "igCloseCurrentPopup");
    igGetMouseDragDelta = bind!igGetMouseDragDelta_t0(handle, "igGetMouseDragDelta");
    igGetMouseDragDelta_nonUDT = bind!igGetMouseDragDelta_nonUDT_t1(handle, "igGetMouseDragDelta_nonUDT");
    igSetWindowCollapsedBool = bind!igSetWindowCollapsedBool_t0(handle, "igSetWindowCollapsedBool");
    igSetWindowCollapsedStr = bind!igSetWindowCollapsedStr_t1(handle, "igSetWindowCollapsedStr");
    igTextDisabled = bind!igTextDisabled_t0(handle, "igTextDisabled");
    igShowUserGuide = bind!igShowUserGuide_t0(handle, "igShowUserGuide");
    igEndPopup = bind!igEndPopup_t0(handle, "igEndPopup");
    igBeginChildFrame = bind!igBeginChildFrame_t0(handle, "igBeginChildFrame");
    ImGuiTextBuffer_append = bind!ImGuiTextBuffer_append_t0(handle, "ImGuiTextBuffer_append");
    igIsRectVisible = bind!igIsRectVisible_t0(handle, "igIsRectVisible");
    igIsRectVisibleVec2 = bind!igIsRectVisibleVec2_t1(handle, "igIsRectVisibleVec2");
    ImGuiInputTextCallbackData_HasSelection = bind!ImGuiInputTextCallbackData_HasSelection_t0(handle, "ImGuiInputTextCallbackData_HasSelection");
    igEndFrame = bind!igEndFrame_t0(handle, "igEndFrame");
    igColorConvertRGBtoHSV = bind!igColorConvertRGBtoHSV_t0(handle, "igColorConvertRGBtoHSV");
    igIsMouseClicked = bind!igIsMouseClicked_t0(handle, "igIsMouseClicked");
    igSetNextWindowFocus = bind!igSetNextWindowFocus_t0(handle, "igSetNextWindowFocus");
    igGetClipboardText = bind!igGetClipboardText_t0(handle, "igGetClipboardText");
    igIsAnyItemHovered = bind!igIsAnyItemHovered_t0(handle, "igIsAnyItemHovered");
    ImGuiListClipper_ImGuiListClipper = bind!ImGuiListClipper_ImGuiListClipper_t0(handle, "ImGuiListClipper_ImGuiListClipper");
    igListBoxHeaderVec2 = bind!igListBoxHeaderVec2_t0(handle, "igListBoxHeaderVec2");
    igListBoxHeaderInt = bind!igListBoxHeaderInt_t1(handle, "igListBoxHeaderInt");
    igBeginPopup = bind!igBeginPopup_t0(handle, "igBeginPopup");
    igMenuItemBool = bind!igMenuItemBool_t0(handle, "igMenuItemBool");
    igMenuItemBoolPtr = bind!igMenuItemBoolPtr_t1(handle, "igMenuItemBoolPtr");
    igResetMouseDragDelta = bind!igResetMouseDragDelta_t0(handle, "igResetMouseDragDelta");
    igSaveIniSettingsToDisk = bind!igSaveIniSettingsToDisk_t0(handle, "igSaveIniSettingsToDisk");
    ImFontConfig_destroy = bind!ImFontConfig_destroy_t0(handle, "ImFontConfig_destroy");
    ImGuiListClipper_End = bind!ImGuiListClipper_End_t0(handle, "ImGuiListClipper_End");
    igDestroyContext = bind!igDestroyContext_t0(handle, "igDestroyContext");
    ImDrawList_UpdateClipRect = bind!ImDrawList_UpdateClipRect_t0(handle, "ImDrawList_UpdateClipRect");
    igSetNextWindowContentSize = bind!igSetNextWindowContentSize_t0(handle, "igSetNextWindowContentSize");
    TextRange_empty = bind!TextRange_empty_t0(handle, "TextRange_empty");
    igInputTextMultiline = bind!igInputTextMultiline_t0(handle, "igInputTextMultiline");
    ImGuiTextFilter_IsActive = bind!ImGuiTextFilter_IsActive_t0(handle, "ImGuiTextFilter_IsActive");
    ImFontAtlas_GetMouseCursorTexData = bind!ImFontAtlas_GetMouseCursorTexData_t0(handle, "ImFontAtlas_GetMouseCursorTexData");
    igLogText = bind!igLogText_t0(handle, "igLogText");
    igGetTextLineHeightWithSpacing = bind!igGetTextLineHeightWithSpacing_t0(handle, "igGetTextLineHeightWithSpacing");
    igPushStyleVarFloat = bind!igPushStyleVarFloat_t0(handle, "igPushStyleVarFloat");
    igPushStyleVarVec2 = bind!igPushStyleVarVec2_t1(handle, "igPushStyleVarVec2");
    igTextColoredV = bind!igTextColoredV_t0(handle, "igTextColoredV");
    ImFontAtlas_ClearFonts = bind!ImFontAtlas_ClearFonts_t0(handle, "ImFontAtlas_ClearFonts");
    igIsKeyReleased = bind!igIsKeyReleased_t0(handle, "igIsKeyReleased");
    igLogToClipboard = bind!igLogToClipboard_t0(handle, "igLogToClipboard");
    ImFontAtlas_GetGlyphRangesKorean = bind!ImFontAtlas_GetGlyphRangesKorean_t0(handle, "ImFontAtlas_GetGlyphRangesKorean");
    ImFontGlyphRangesBuilder_SetBit = bind!ImFontGlyphRangesBuilder_SetBit_t0(handle, "ImFontGlyphRangesBuilder_SetBit");
    igStyleColorsClassic = bind!igStyleColorsClassic_t0(handle, "igStyleColorsClassic");
    igBegin = bind!igBegin_t0(handle, "igBegin");
    igBeginMenuBar = bind!igBeginMenuBar_t0(handle, "igBeginMenuBar");
    igButton = bind!igButton_t0(handle, "igButton");
    igTextColored = bind!igTextColored_t0(handle, "igTextColored");
    igSliderScalar = bind!igSliderScalar_t0(handle, "igSliderScalar");
    igListBoxFooter = bind!igListBoxFooter_t0(handle, "igListBoxFooter");
    igGetScrollY = bind!igGetScrollY_t0(handle, "igGetScrollY");
    igGetStyleColorVec4 = bind!igGetStyleColorVec4_t0(handle, "igGetStyleColorVec4");
    igSetWindowFocus = bind!igSetWindowFocus_t0(handle, "igSetWindowFocus");
    igSetWindowFocusStr = bind!igSetWindowFocusStr_t1(handle, "igSetWindowFocusStr");
    igInvisibleButton = bind!igInvisibleButton_t0(handle, "igInvisibleButton");
    ImGuiStyle_ImGuiStyle = bind!ImGuiStyle_ImGuiStyle_t0(handle, "ImGuiStyle_ImGuiStyle");
    igIsMouseDown = bind!igIsMouseDown_t0(handle, "igIsMouseDown");
    ImFontConfig_ImFontConfig = bind!ImFontConfig_ImFontConfig_t0(handle, "ImFontConfig_ImFontConfig");
    igNewLine = bind!igNewLine_t0(handle, "igNewLine");
    igMemFree = bind!igMemFree_t0(handle, "igMemFree");
    igNextColumn = bind!igNextColumn_t0(handle, "igNextColumn");
    igLogButtons = bind!igLogButtons_t0(handle, "igLogButtons");
    igEndTabItem = bind!igEndTabItem_t0(handle, "igEndTabItem");
    ImFont_ClearOutputData = bind!ImFont_ClearOutputData_t0(handle, "ImFont_ClearOutputData");
    ImFont_ImFont = bind!ImFont_ImFont_t0(handle, "ImFont_ImFont");
    igVSliderFloat = bind!igVSliderFloat_t0(handle, "igVSliderFloat");
    igEndGroup = bind!igEndGroup_t0(handle, "igEndGroup");
    igPlotLines = bind!igPlotLines_t0(handle, "igPlotLines");
    igPlotLinesFnPtr = bind!igPlotLinesFnPtr_t1(handle, "igPlotLinesFnPtr");
    igSetItemAllowOverlap = bind!igSetItemAllowOverlap_t0(handle, "igSetItemAllowOverlap");
    ImGuiStorage_GetVoidPtrRef = bind!ImGuiStorage_GetVoidPtrRef_t0(handle, "ImGuiStorage_GetVoidPtrRef");
    igCheckboxFlags = bind!igCheckboxFlags_t0(handle, "igCheckboxFlags");
    ImFontGlyphRangesBuilder_AddRanges = bind!ImFontGlyphRangesBuilder_AddRanges_t0(handle, "ImFontGlyphRangesBuilder_AddRanges");
    ImFontAtlas_GetGlyphRangesVietnamese = bind!ImFontAtlas_GetGlyphRangesVietnamese_t0(handle, "ImFontAtlas_GetGlyphRangesVietnamese");
    igGetVersion = bind!igGetVersion_t0(handle, "igGetVersion");
    ImDrawList_ImDrawList = bind!ImDrawList_ImDrawList_t0(handle, "ImDrawList_ImDrawList");
    ImGuiListClipper_destroy = bind!ImGuiListClipper_destroy_t0(handle, "ImGuiListClipper_destroy");
    igSetScrollY = bind!igSetScrollY_t0(handle, "igSetScrollY");
    ImFont_CalcWordWrapPositionA = bind!ImFont_CalcWordWrapPositionA_t0(handle, "ImFont_CalcWordWrapPositionA");
    igSmallButton = bind!igSmallButton_t0(handle, "igSmallButton");
    igCombo = bind!igCombo_t0(handle, "igCombo");
    igComboStr = bind!igComboStr_t1(handle, "igComboStr");
    igComboFnPtr = bind!igComboFnPtr_t2(handle, "igComboFnPtr");
    ImDrawList_AddCircle = bind!ImDrawList_AddCircle_t0(handle, "ImDrawList_AddCircle");
    ImDrawList_AddLine = bind!ImDrawList_AddLine_t0(handle, "ImDrawList_AddLine");
    igSetMouseCursor = bind!igSetMouseCursor_t0(handle, "igSetMouseCursor");
    igGetIO = bind!igGetIO_t0(handle, "igGetIO");
    ImGuiPayload_destroy = bind!ImGuiPayload_destroy_t0(handle, "ImGuiPayload_destroy");
    igEndMenu = bind!igEndMenu_t0(handle, "igEndMenu");
    ImDrawList_PrimRect = bind!ImDrawList_PrimRect_t0(handle, "ImDrawList_PrimRect");
    ImDrawList_AddRectFilled = bind!ImDrawList_AddRectFilled_t0(handle, "ImDrawList_AddRectFilled");
    igSetColorEditOptions = bind!igSetColorEditOptions_t0(handle, "igSetColorEditOptions");
    igDragInt2 = bind!igDragInt2_t0(handle, "igDragInt2");
    igIsAnyMouseDown = bind!igIsAnyMouseDown_t0(handle, "igIsAnyMouseDown");
    ImGuiTextFilter_Build = bind!ImGuiTextFilter_Build_t0(handle, "ImGuiTextFilter_Build");
    igSetNextWindowCollapsed = bind!igSetNextWindowCollapsed_t0(handle, "igSetNextWindowCollapsed");
    ImFontAtlas_GetGlyphRangesCyrillic = bind!ImFontAtlas_GetGlyphRangesCyrillic_t0(handle, "ImFontAtlas_GetGlyphRangesCyrillic");
    ImGuiStyle_destroy = bind!ImGuiStyle_destroy_t0(handle, "ImGuiStyle_destroy");
    ImDrawList_destroy = bind!ImDrawList_destroy_t0(handle, "ImDrawList_destroy");
    ImVec4_destroy = bind!ImVec4_destroy_t0(handle, "ImVec4_destroy");
    igTreeNodeExStr = bind!igTreeNodeExStr_t0(handle, "igTreeNodeExStr");
    igTreeNodeExStrStr = bind!igTreeNodeExStrStr_t1(handle, "igTreeNodeExStrStr");
    igTreeNodeExPtr = bind!igTreeNodeExPtr_t2(handle, "igTreeNodeExPtr");
    igSetColumnWidth = bind!igSetColumnWidth_t0(handle, "igSetColumnWidth");
    igIsItemClicked = bind!igIsItemClicked_t0(handle, "igIsItemClicked");
    ImDrawList_AddCallback = bind!ImDrawList_AddCallback_t0(handle, "ImDrawList_AddCallback");
    igGetMousePos = bind!igGetMousePos_t0(handle, "igGetMousePos");
    igGetMousePos_nonUDT = bind!igGetMousePos_nonUDT_t1(handle, "igGetMousePos_nonUDT");
    igBullet = bind!igBullet_t0(handle, "igBullet");
    igSetNextTreeNodeOpen = bind!igSetNextTreeNodeOpen_t0(handle, "igSetNextTreeNodeOpen");
    igGetWindowContentRegionMin = bind!igGetWindowContentRegionMin_t0(handle, "igGetWindowContentRegionMin");
    igGetWindowContentRegionMin_nonUDT = bind!igGetWindowContentRegionMin_nonUDT_t1(handle, "igGetWindowContentRegionMin_nonUDT");
    igDragScalar = bind!igDragScalar_t0(handle, "igDragScalar");
    igSetCursorPos = bind!igSetCursorPos_t0(handle, "igSetCursorPos");
    igSetTooltip = bind!igSetTooltip_t0(handle, "igSetTooltip");
    igCalcItemWidth = bind!igCalcItemWidth_t0(handle, "igCalcItemWidth");
    igPushItemWidth = bind!igPushItemWidth_t0(handle, "igPushItemWidth");
    igSetAllocatorFunctions = bind!igSetAllocatorFunctions_t0(handle, "igSetAllocatorFunctions");
    ImDrawList_ChannelsMerge = bind!ImDrawList_ChannelsMerge_t0(handle, "ImDrawList_ChannelsMerge");
    ImFont_FindGlyph = bind!ImFont_FindGlyph_t0(handle, "ImFont_FindGlyph");
    ImGuiPayload_IsDelivery = bind!ImGuiPayload_IsDelivery_t0(handle, "ImGuiPayload_IsDelivery");
    ImFontAtlas_GetGlyphRangesJapanese = bind!ImFontAtlas_GetGlyphRangesJapanese_t0(handle, "ImFontAtlas_GetGlyphRangesJapanese");
    igCaptureMouseFromApp = bind!igCaptureMouseFromApp_t0(handle, "igCaptureMouseFromApp");
    ImGuiInputTextCallbackData_InsertChars = bind!ImGuiInputTextCallbackData_InsertChars_t0(handle, "ImGuiInputTextCallbackData_InsertChars");
    igDragFloat2 = bind!igDragFloat2_t0(handle, "igDragFloat2");
    ImFont_destroy = bind!ImFont_destroy_t0(handle, "ImFont_destroy");
    igEndMenuBar = bind!igEndMenuBar_t0(handle, "igEndMenuBar");
    igGetWindowSize = bind!igGetWindowSize_t0(handle, "igGetWindowSize");
    igGetWindowSize_nonUDT = bind!igGetWindowSize_nonUDT_t1(handle, "igGetWindowSize_nonUDT");
    igInputInt4 = bind!igInputInt4_t0(handle, "igInputInt4");
    igGetMouseCursor = bind!igGetMouseCursor_t0(handle, "igGetMouseCursor");
    igLabelText = bind!igLabelText_t0(handle, "igLabelText");
    igIsMouseDoubleClicked = bind!igIsMouseDoubleClicked_t0(handle, "igIsMouseDoubleClicked");
    ImDrawList_PathClear = bind!ImDrawList_PathClear_t0(handle, "ImDrawList_PathClear");
    ImDrawCmd_destroy = bind!ImDrawCmd_destroy_t0(handle, "ImDrawCmd_destroy");
    igGetStateStorage = bind!igGetStateStorage_t0(handle, "igGetStateStorage");
    CustomRect_destroy = bind!CustomRect_destroy_t0(handle, "CustomRect_destroy");
    igInputInt2 = bind!igInputInt2_t0(handle, "igInputInt2");
    igGetFrameHeight = bind!igGetFrameHeight_t0(handle, "igGetFrameHeight");
    igInputText = bind!igInputText_t0(handle, "igInputText");
    igTreeNodeExVStr = bind!igTreeNodeExVStr_t0(handle, "igTreeNodeExVStr");
    igTreeNodeExVPtr = bind!igTreeNodeExVPtr_t1(handle, "igTreeNodeExVPtr");
    igIsAnyItemFocused = bind!igIsAnyItemFocused_t0(handle, "igIsAnyItemFocused");
    igPopStyleColor = bind!igPopStyleColor_t0(handle, "igPopStyleColor");
    igColorEdit4 = bind!igColorEdit4_t0(handle, "igColorEdit4");
    igGetCursorStartPos = bind!igGetCursorStartPos_t0(handle, "igGetCursorStartPos");
    igGetCursorStartPos_nonUDT = bind!igGetCursorStartPos_nonUDT_t1(handle, "igGetCursorStartPos_nonUDT");
    ImGuiInputTextCallbackData_destroy = bind!ImGuiInputTextCallbackData_destroy_t0(handle, "ImGuiInputTextCallbackData_destroy");
    ImFontAtlas_IsBuilt = bind!ImFontAtlas_IsBuilt_t0(handle, "ImFontAtlas_IsBuilt");
    ImGuiTextBuffer_begin = bind!ImGuiTextBuffer_begin_t0(handle, "ImGuiTextBuffer_begin");
    ImVec4_ImVec4 = bind!ImVec4_ImVec4_t0(handle, "ImVec4_ImVec4");
    ImVec4_ImVec4Float = bind!ImVec4_ImVec4Float_t1(handle, "ImVec4_ImVec4Float");
    ImFont_BuildLookupTable = bind!ImFont_BuildLookupTable_t0(handle, "ImFont_BuildLookupTable");
    ImGuiTextBuffer_appendfv = bind!ImGuiTextBuffer_appendfv_t0(handle, "ImGuiTextBuffer_appendfv");
    igDragInt4 = bind!igDragInt4_t0(handle, "igDragInt4");
    ImDrawList_PathLineToMergeDuplicate = bind!ImDrawList_PathLineToMergeDuplicate_t0(handle, "ImDrawList_PathLineToMergeDuplicate");
    ImGuiIO_ImGuiIO = bind!ImGuiIO_ImGuiIO_t0(handle, "ImGuiIO_ImGuiIO");
    igBeginDragDropTarget = bind!igBeginDragDropTarget_t0(handle, "igBeginDragDropTarget");
    ImGuiTextBuffer_clear = bind!ImGuiTextBuffer_clear_t0(handle, "ImGuiTextBuffer_clear");
    igIsWindowFocused = bind!igIsWindowFocused_t0(handle, "igIsWindowFocused");
    ImGuiIO_AddInputCharactersUTF8 = bind!ImGuiIO_AddInputCharactersUTF8_t0(handle, "ImGuiIO_AddInputCharactersUTF8");
    igSetCurrentContext = bind!igSetCurrentContext_t0(handle, "igSetCurrentContext");
    igSliderInt4 = bind!igSliderInt4_t0(handle, "igSliderInt4");
    igGetItemRectMin = bind!igGetItemRectMin_t0(handle, "igGetItemRectMin");
    igGetItemRectMin_nonUDT = bind!igGetItemRectMin_nonUDT_t1(handle, "igGetItemRectMin_nonUDT");
    ImDrawList_PrimReserve = bind!ImDrawList_PrimReserve_t0(handle, "ImDrawList_PrimReserve");
    ImDrawList_AddRectFilledMultiColor = bind!ImDrawList_AddRectFilledMultiColor_t0(handle, "ImDrawList_AddRectFilledMultiColor");
    igSetStateStorage = bind!igSetStateStorage_t0(handle, "igSetStateStorage");
    ImGuiStorage_SetAllInt = bind!ImGuiStorage_SetAllInt_t0(handle, "ImGuiStorage_SetAllInt");
    ImGuiListClipper_Step = bind!ImGuiListClipper_Step_t0(handle, "ImGuiListClipper_Step");
    ImGuiOnceUponAFrame_destroy = bind!ImGuiOnceUponAFrame_destroy_t0(handle, "ImGuiOnceUponAFrame_destroy");
    ImGuiInputTextCallbackData_DeleteChars = bind!ImGuiInputTextCallbackData_DeleteChars_t0(handle, "ImGuiInputTextCallbackData_DeleteChars");
    ImGuiTextBuffer_empty = bind!ImGuiTextBuffer_empty_t0(handle, "ImGuiTextBuffer_empty");
    igShowDemoWindow = bind!igShowDemoWindow_t0(handle, "igShowDemoWindow");
    ImGuiStorage_SetVoidPtr = bind!ImGuiStorage_SetVoidPtr_t0(handle, "ImGuiStorage_SetVoidPtr");
    ImDrawList_PushTextureID = bind!ImDrawList_PushTextureID_t0(handle, "ImDrawList_PushTextureID");
    ImDrawList_PathLineTo = bind!ImDrawList_PathLineTo_t0(handle, "ImDrawList_PathLineTo");
    ImDrawList_AddImageRounded = bind!ImDrawList_AddImageRounded_t0(handle, "ImDrawList_AddImageRounded");
    ImGuiStorage_BuildSortByKey = bind!ImGuiStorage_BuildSortByKey_t0(handle, "ImGuiStorage_BuildSortByKey");
    ImDrawList_PathRect = bind!ImDrawList_PathRect_t0(handle, "ImDrawList_PathRect");
    ImColor_destroy = bind!ImColor_destroy_t0(handle, "ImColor_destroy");
    igColorEdit3 = bind!igColorEdit3_t0(handle, "igColorEdit3");
    igShowMetricsWindow = bind!igShowMetricsWindow_t0(handle, "igShowMetricsWindow");
    igLogFinish = bind!igLogFinish_t0(handle, "igLogFinish");
    igGetItemRectSize = bind!igGetItemRectSize_t0(handle, "igGetItemRectSize");
    igGetItemRectSize_nonUDT = bind!igGetItemRectSize_nonUDT_t1(handle, "igGetItemRectSize_nonUDT");
    igDragScalarN = bind!igDragScalarN_t0(handle, "igDragScalarN");
    ImDrawData_ImDrawData = bind!ImDrawData_ImDrawData_t0(handle, "ImDrawData_ImDrawData");
    igGetWindowWidth = bind!igGetWindowWidth_t0(handle, "igGetWindowWidth");
    igBulletTextV = bind!igBulletTextV_t0(handle, "igBulletTextV");
    igPushTextWrapPos = bind!igPushTextWrapPos_t0(handle, "igPushTextWrapPos");
    ImGuiStorage_SetBool = bind!ImGuiStorage_SetBool_t0(handle, "ImGuiStorage_SetBool");
    igAlignTextToFramePadding = bind!igAlignTextToFramePadding_t0(handle, "igAlignTextToFramePadding");
    igIsWindowHovered = bind!igIsWindowHovered_t0(handle, "igIsWindowHovered");
    ImDrawList_PathBezierCurveTo = bind!ImDrawList_PathBezierCurveTo_t0(handle, "ImDrawList_PathBezierCurveTo");
    igGetWindowContentRegionWidth = bind!igGetWindowContentRegionWidth_t0(handle, "igGetWindowContentRegionWidth");
    ImDrawList_PathArcTo = bind!ImDrawList_PathArcTo_t0(handle, "ImDrawList_PathArcTo");
    igIsAnyItemActive = bind!igIsAnyItemActive_t0(handle, "igIsAnyItemActive");
    igStyleColorsDark = bind!igStyleColorsDark_t0(handle, "igStyleColorsDark");
    igGetTreeNodeToLabelSpacing = bind!igGetTreeNodeToLabelSpacing_t0(handle, "igGetTreeNodeToLabelSpacing");
    igSameLine = bind!igSameLine_t0(handle, "igSameLine");
    igDummy = bind!igDummy_t0(handle, "igDummy");
    igImageButton = bind!igImageButton_t0(handle, "igImageButton");
    igGetKeyPressedAmount = bind!igGetKeyPressedAmount_t0(handle, "igGetKeyPressedAmount");
    igGetWindowContentRegionMax = bind!igGetWindowContentRegionMax_t0(handle, "igGetWindowContentRegionMax");
    igGetWindowContentRegionMax_nonUDT = bind!igGetWindowContentRegionMax_nonUDT_t1(handle, "igGetWindowContentRegionMax_nonUDT");
    igSetNextWindowSizeConstraints = bind!igSetNextWindowSizeConstraints_t0(handle, "igSetNextWindowSizeConstraints");
    ImFont_FindGlyphNoFallback = bind!ImFont_FindGlyphNoFallback_t0(handle, "ImFont_FindGlyphNoFallback");
    igShowStyleSelector = bind!igShowStyleSelector_t0(handle, "igShowStyleSelector");
    igEndDragDropTarget = bind!igEndDragDropTarget_t0(handle, "igEndDragDropTarget");
    ImFontAtlas_Build = bind!ImFontAtlas_Build_t0(handle, "ImFontAtlas_Build");
    igIsKeyPressed = bind!igIsKeyPressed_t0(handle, "igIsKeyPressed");
    igEndTooltip = bind!igEndTooltip_t0(handle, "igEndTooltip");
    ImFont_IsLoaded = bind!ImFont_IsLoaded_t0(handle, "ImFont_IsLoaded");
    igBeginDragDropSource = bind!igBeginDragDropSource_t0(handle, "igBeginDragDropSource");
    igGetCursorPosX = bind!igGetCursorPosX_t0(handle, "igGetCursorPosX");
    igPushFont = bind!igPushFont_t0(handle, "igPushFont");
    igSetScrollFromPosY = bind!igSetScrollFromPosY_t0(handle, "igSetScrollFromPosY");
    igAcceptDragDropPayload = bind!igAcceptDragDropPayload_t0(handle, "igAcceptDragDropPayload");
    ImDrawList_PopClipRect = bind!ImDrawList_PopClipRect_t0(handle, "ImDrawList_PopClipRect");
    igColorButton = bind!igColorButton_t0(handle, "igColorButton");
    igEndMainMenuBar = bind!igEndMainMenuBar_t0(handle, "igEndMainMenuBar");
    igGetScrollMaxY = bind!igGetScrollMaxY_t0(handle, "igGetScrollMaxY");
    igIsItemActive = bind!igIsItemActive_t0(handle, "igIsItemActive");
    igShowAboutWindow = bind!igShowAboutWindow_t0(handle, "igShowAboutWindow");
    igSetNextItemWidth = bind!igSetNextItemWidth_t0(handle, "igSetNextItemWidth");
    igGetContentRegionAvail = bind!igGetContentRegionAvail_t0(handle, "igGetContentRegionAvail");
    igGetContentRegionAvail_nonUDT = bind!igGetContentRegionAvail_nonUDT_t1(handle, "igGetContentRegionAvail_nonUDT");
    ImGuiPayload_ImGuiPayload = bind!ImGuiPayload_ImGuiPayload_t0(handle, "ImGuiPayload_ImGuiPayload");
    igCheckbox = bind!igCheckbox_t0(handle, "igCheckbox");
    ImFontAtlas_destroy = bind!ImFontAtlas_destroy_t0(handle, "ImFontAtlas_destroy");
    igPushStyleColorU32 = bind!igPushStyleColorU32_t0(handle, "igPushStyleColorU32");
    igPushStyleColor = bind!igPushStyleColor_t1(handle, "igPushStyleColor");
    ImVec2_destroy = bind!ImVec2_destroy_t0(handle, "ImVec2_destroy");
    igGetIDStr = bind!igGetIDStr_t0(handle, "igGetIDStr");
    igGetIDRange = bind!igGetIDRange_t1(handle, "igGetIDRange");
    igGetIDPtr = bind!igGetIDPtr_t2(handle, "igGetIDPtr");
    igSetColumnOffset = bind!igSetColumnOffset_t0(handle, "igSetColumnOffset");
    igSetDragDropPayload = bind!igSetDragDropPayload_t0(handle, "igSetDragDropPayload");
    ImFontAtlas_ImFontAtlas = bind!ImFontAtlas_ImFontAtlas_t0(handle, "ImFontAtlas_ImFontAtlas");
    igBeginGroup = bind!igBeginGroup_t0(handle, "igBeginGroup");
    igEndChildFrame = bind!igEndChildFrame_t0(handle, "igEndChildFrame");
    igGetContentRegionMax = bind!igGetContentRegionMax_t0(handle, "igGetContentRegionMax");
    igGetContentRegionMax_nonUDT = bind!igGetContentRegionMax_nonUDT_t1(handle, "igGetContentRegionMax_nonUDT");
    ImDrawList_PushClipRectFullScreen = bind!ImDrawList_PushClipRectFullScreen_t0(handle, "ImDrawList_PushClipRectFullScreen");
    igLoadIniSettingsFromMemory = bind!igLoadIniSettingsFromMemory_t0(handle, "igLoadIniSettingsFromMemory");
    igGetBackgroundDrawList = bind!igGetBackgroundDrawList_t0(handle, "igGetBackgroundDrawList");
    igSetKeyboardFocusHere = bind!igSetKeyboardFocusHere_t0(handle, "igSetKeyboardFocusHere");
    igSetNextWindowSize = bind!igSetNextWindowSize_t0(handle, "igSetNextWindowSize");
    igIndent = bind!igIndent_t0(handle, "igIndent");
    igPopStyleVar = bind!igPopStyleVar_t0(handle, "igPopStyleVar");
    igInputFloat3 = bind!igInputFloat3_t0(handle, "igInputFloat3");
    igIsKeyDown = bind!igIsKeyDown_t0(handle, "igIsKeyDown");
    igTextV = bind!igTextV_t0(handle, "igTextV");
    igTextUnformatted = bind!igTextUnformatted_t0(handle, "igTextUnformatted");
    ImGuiTextFilter_Draw = bind!ImGuiTextFilter_Draw_t0(handle, "ImGuiTextFilter_Draw");
    igPushClipRect = bind!igPushClipRect_t0(handle, "igPushClipRect");
    igCollapsingHeader = bind!igCollapsingHeader_t0(handle, "igCollapsingHeader");
    igCollapsingHeaderBoolPtr = bind!igCollapsingHeaderBoolPtr_t1(handle, "igCollapsingHeaderBoolPtr");
    igBeginMainMenuBar = bind!igBeginMainMenuBar_t0(handle, "igBeginMainMenuBar");
    igSliderInt3 = bind!igSliderInt3_t0(handle, "igSliderInt3");
    igIsMouseReleased = bind!igIsMouseReleased_t0(handle, "igIsMouseReleased");
    ImGuiIO_AddInputCharacter = bind!ImGuiIO_AddInputCharacter_t0(handle, "ImGuiIO_AddInputCharacter");
    igGetTextLineHeight = bind!igGetTextLineHeight_t0(handle, "igGetTextLineHeight");
    ImDrawList_AddQuadFilled = bind!ImDrawList_AddQuadFilled_t0(handle, "ImDrawList_AddQuadFilled");
    igSetNextWindowBgAlpha = bind!igSetNextWindowBgAlpha_t0(handle, "igSetNextWindowBgAlpha");
    igBeginMenu = bind!igBeginMenu_t0(handle, "igBeginMenu");
    ImGuiStorage_GetIntRef = bind!ImGuiStorage_GetIntRef_t0(handle, "ImGuiStorage_GetIntRef");
    igEndCombo = bind!igEndCombo_t0(handle, "igEndCombo");
    igTreeNodeStr = bind!igTreeNodeStr_t0(handle, "igTreeNodeStr");
    igTreeNodeStrStr = bind!igTreeNodeStrStr_t1(handle, "igTreeNodeStrStr");
    igTreeNodePtr = bind!igTreeNodePtr_t2(handle, "igTreeNodePtr");
    ImDrawList_AddPolyline = bind!ImDrawList_AddPolyline_t0(handle, "ImDrawList_AddPolyline");
    igImage = bind!igImage_t0(handle, "igImage");
    igPopClipRect = bind!igPopClipRect_t0(handle, "igPopClipRect");
    ImDrawList_PushClipRect = bind!ImDrawList_PushClipRect_t0(handle, "ImDrawList_PushClipRect");
    igSelectable = bind!igSelectable_t0(handle, "igSelectable");
    igSelectableBoolPtr = bind!igSelectableBoolPtr_t1(handle, "igSelectableBoolPtr");
    ImDrawData_DeIndexAllBuffers = bind!ImDrawData_DeIndexAllBuffers_t0(handle, "ImDrawData_DeIndexAllBuffers");
    ImDrawCmd_ImDrawCmd = bind!ImDrawCmd_ImDrawCmd_t0(handle, "ImDrawCmd_ImDrawCmd");
    ImDrawData_ScaleClipRects = bind!ImDrawData_ScaleClipRects_t0(handle, "ImDrawData_ScaleClipRects");
    ImDrawList_AddTriangle = bind!ImDrawList_AddTriangle_t0(handle, "ImDrawList_AddTriangle");
    igLogToFile = bind!igLogToFile_t0(handle, "igLogToFile");
    Pair_destroy = bind!Pair_destroy_t0(handle, "Pair_destroy");
    igCreateContext = bind!igCreateContext_t0(handle, "igCreateContext");
    ImColor_ImColor = bind!ImColor_ImColor_t0(handle, "ImColor_ImColor");
    ImColor_ImColorInt = bind!ImColor_ImColorInt_t1(handle, "ImColor_ImColorInt");
    ImColor_ImColorU32 = bind!ImColor_ImColorU32_t2(handle, "ImColor_ImColorU32");
    ImColor_ImColorFloat = bind!ImColor_ImColorFloat_t3(handle, "ImColor_ImColorFloat");
    ImColor_ImColorVec4 = bind!ImColor_ImColorVec4_t4(handle, "ImColor_ImColorVec4");
    TextRange_destroy = bind!TextRange_destroy_t0(handle, "TextRange_destroy");
    ImDrawList_UpdateTextureID = bind!ImDrawList_UpdateTextureID_t0(handle, "ImDrawList_UpdateTextureID");
    igGetWindowDrawList = bind!igGetWindowDrawList_t0(handle, "igGetWindowDrawList");
    igIsMousePosValid = bind!igIsMousePosValid_t0(handle, "igIsMousePosValid");
    ImGuiStorage_GetFloat = bind!ImGuiStorage_GetFloat_t0(handle, "ImGuiStorage_GetFloat");
    igSliderFloat4 = bind!igSliderFloat4_t0(handle, "igSliderFloat4");
    igIsItemDeactivatedAfterEdit = bind!igIsItemDeactivatedAfterEdit_t0(handle, "igIsItemDeactivatedAfterEdit");
    igTextWrappedV = bind!igTextWrappedV_t0(handle, "igTextWrappedV");
    igShowStyleEditor = bind!igShowStyleEditor_t0(handle, "igShowStyleEditor");
    igIsItemEdited = bind!igIsItemEdited_t0(handle, "igIsItemEdited");
    igDebugCheckVersionAndDataLayout = bind!igDebugCheckVersionAndDataLayout_t0(handle, "igDebugCheckVersionAndDataLayout");
    ImGuiTextBuffer_appendf = bind!ImGuiTextBuffer_appendf_t0(handle, "ImGuiTextBuffer_appendf");
    ImFontAtlas_AddCustomRectFontGlyph = bind!ImFontAtlas_AddCustomRectFontGlyph_t0(handle, "ImFontAtlas_AddCustomRectFontGlyph");
    igInputTextWithHint = bind!igInputTextWithHint_t0(handle, "igInputTextWithHint");
    ImGuiStorage_GetBoolRef = bind!ImGuiStorage_GetBoolRef_t0(handle, "ImGuiStorage_GetBoolRef");
    igBeginPopupContextVoid = bind!igBeginPopupContextVoid_t0(handle, "igBeginPopupContextVoid");
    igSetScrollX = bind!igSetScrollX_t0(handle, "igSetScrollX");
    igPlotHistogramFloatPtr = bind!igPlotHistogramFloatPtr_t0(handle, "igPlotHistogramFloatPtr");
    igPlotHistogramFnPtr = bind!igPlotHistogramFnPtr_t1(handle, "igPlotHistogramFnPtr");
    igSliderInt2 = bind!igSliderInt2_t0(handle, "igSliderInt2");
    igIsMouseHoveringRect = bind!igIsMouseHoveringRect_t0(handle, "igIsMouseHoveringRect");
    ImGuiListClipper_Begin = bind!ImGuiListClipper_Begin_t0(handle, "ImGuiListClipper_Begin");
    igSliderInt = bind!igSliderInt_t0(handle, "igSliderInt");
    igIsItemHovered = bind!igIsItemHovered_t0(handle, "igIsItemHovered");
    ImGuiIO_destroy = bind!ImGuiIO_destroy_t0(handle, "ImGuiIO_destroy");
    TextRange_begin = bind!TextRange_begin_t0(handle, "TextRange_begin");
    igEndDragDropSource = bind!igEndDragDropSource_t0(handle, "igEndDragDropSource");
    igGetDragDropPayload = bind!igGetDragDropPayload_t0(handle, "igGetDragDropPayload");
    ImGuiStorage_SetInt = bind!ImGuiStorage_SetInt_t0(handle, "ImGuiStorage_SetInt");
    igPopButtonRepeat = bind!igPopButtonRepeat_t0(handle, "igPopButtonRepeat");
    ImGuiStorage_GetInt = bind!ImGuiStorage_GetInt_t0(handle, "ImGuiStorage_GetInt");
    igShowFontSelector = bind!igShowFontSelector_t0(handle, "igShowFontSelector");
    igPushButtonRepeat = bind!igPushButtonRepeat_t0(handle, "igPushButtonRepeat");
    igColorConvertFloat4ToU32 = bind!igColorConvertFloat4ToU32_t0(handle, "igColorConvertFloat4ToU32");
    igTreePushStr = bind!igTreePushStr_t0(handle, "igTreePushStr");
    igTreePushPtr = bind!igTreePushPtr_t1(handle, "igTreePushPtr");
    igGetStyle = bind!igGetStyle_t0(handle, "igGetStyle");
    igGetCursorPos = bind!igGetCursorPos_t0(handle, "igGetCursorPos");
    igGetCursorPos_nonUDT = bind!igGetCursorPos_nonUDT_t1(handle, "igGetCursorPos_nonUDT");
    igGetFrameCount = bind!igGetFrameCount_t0(handle, "igGetFrameCount");
    igIsItemActivated = bind!igIsItemActivated_t0(handle, "igIsItemActivated");
    igEnd = bind!igEnd_t0(handle, "igEnd");
    ImFontAtlas_AddFontDefault = bind!ImFontAtlas_AddFontDefault_t0(handle, "ImFontAtlas_AddFontDefault");
    igGetColumnsCount = bind!igGetColumnsCount_t0(handle, "igGetColumnsCount");
    igEndChild = bind!igEndChild_t0(handle, "igEndChild");
    ImGuiStyle_ScaleAllSizes = bind!ImGuiStyle_ScaleAllSizes_t0(handle, "ImGuiStyle_ScaleAllSizes");
    igArrowButton = bind!igArrowButton_t0(handle, "igArrowButton");
    igSetCursorPosY = bind!igSetCursorPosY_t0(handle, "igSetCursorPosY");
    igBeginPopupContextItem = bind!igBeginPopupContextItem_t0(handle, "igBeginPopupContextItem");
    ImGuiTextFilter_ImGuiTextFilter = bind!ImGuiTextFilter_ImGuiTextFilter_t0(handle, "ImGuiTextFilter_ImGuiTextFilter");
    ImGuiStorage_SetFloat = bind!ImGuiStorage_SetFloat_t0(handle, "ImGuiStorage_SetFloat");
    igGetTime = bind!igGetTime_t0(handle, "igGetTime");
    igSliderScalarN = bind!igSliderScalarN_t0(handle, "igSliderScalarN");
    ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon = bind!ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon_t0(handle, "ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon");
    igGetMousePosOnOpeningCurrentPopup = bind!igGetMousePosOnOpeningCurrentPopup_t0(handle, "igGetMousePosOnOpeningCurrentPopup");
    igGetMousePosOnOpeningCurrentPopup_nonUDT = bind!igGetMousePosOnOpeningCurrentPopup_nonUDT_t1(handle, "igGetMousePosOnOpeningCurrentPopup_nonUDT");
    igVSliderScalar = bind!igVSliderScalar_t0(handle, "igVSliderScalar");
    ImFont_RenderChar = bind!ImFont_RenderChar_t0(handle, "ImFont_RenderChar");
    ImFont_RenderText = bind!ImFont_RenderText_t0(handle, "ImFont_RenderText");
    ImFontAtlas_SetTexID = bind!ImFontAtlas_SetTexID_t0(handle, "ImFontAtlas_SetTexID");
    ImFontAtlas_Clear = bind!ImFontAtlas_Clear_t0(handle, "ImFontAtlas_Clear");
    ImGuiTextFilter_destroy = bind!ImGuiTextFilter_destroy_t0(handle, "ImGuiTextFilter_destroy");
    igBeginPopupModal = bind!igBeginPopupModal_t0(handle, "igBeginPopupModal");
    igInputFloat = bind!igInputFloat_t0(handle, "igInputFloat");
    igDragIntRange2 = bind!igDragIntRange2_t0(handle, "igDragIntRange2");
    ImDrawList_GetClipRectMax = bind!ImDrawList_GetClipRectMax_t0(handle, "ImDrawList_GetClipRectMax");
    ImDrawList_GetClipRectMax_nonUDT = bind!ImDrawList_GetClipRectMax_nonUDT_t1(handle, "ImDrawList_GetClipRectMax_nonUDT");
    igInputFloat2 = bind!igInputFloat2_t0(handle, "igInputFloat2");
    ImDrawList_ClearFreeMemory = bind!ImDrawList_ClearFreeMemory_t0(handle, "ImDrawList_ClearFreeMemory");
    igSetTooltipV = bind!igSetTooltipV_t0(handle, "igSetTooltipV");
    igVSliderInt = bind!igVSliderInt_t0(handle, "igVSliderInt");
    ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder = bind!ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder_t0(handle, "ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder");
    igPopTextWrapPos = bind!igPopTextWrapPos_t0(handle, "igPopTextWrapPos");
    ImDrawList_GetClipRectMin = bind!ImDrawList_GetClipRectMin_t0(handle, "ImDrawList_GetClipRectMin");
    ImDrawList_GetClipRectMin_nonUDT = bind!ImDrawList_GetClipRectMin_nonUDT_t1(handle, "ImDrawList_GetClipRectMin_nonUDT");
    ImDrawList_PathStroke = bind!ImDrawList_PathStroke_t0(handle, "ImDrawList_PathStroke");
    igBeginTooltip = bind!igBeginTooltip_t0(handle, "igBeginTooltip");
    igOpenPopupOnItemClick = bind!igOpenPopupOnItemClick_t0(handle, "igOpenPopupOnItemClick");
    ImColor_HSV = bind!ImColor_HSV_t0(handle, "ImColor_HSV");
    ImColor_HSV_nonUDT = bind!ImColor_HSV_nonUDT_t1(handle, "ImColor_HSV_nonUDT");
    igSetTabItemClosed = bind!igSetTabItemClosed_t0(handle, "igSetTabItemClosed");
    ImFont_AddGlyph = bind!ImFont_AddGlyph_t0(handle, "ImFont_AddGlyph");
    ImFontGlyphRangesBuilder_AddText = bind!ImFontGlyphRangesBuilder_AddText_t0(handle, "ImFontGlyphRangesBuilder_AddText");
    ImGuiInputTextCallbackData_ImGuiInputTextCallbackData = bind!ImGuiInputTextCallbackData_ImGuiInputTextCallbackData_t0(handle, "ImGuiInputTextCallbackData_ImGuiInputTextCallbackData");
    igColorPicker4 = bind!igColorPicker4_t0(handle, "igColorPicker4");
    igColorConvertHSVtoRGB = bind!igColorConvertHSVtoRGB_t0(handle, "igColorConvertHSVtoRGB");
    igDragInt3 = bind!igDragInt3_t0(handle, "igDragInt3");
    ImDrawList_AddTriangleFilled = bind!ImDrawList_AddTriangleFilled_t0(handle, "ImDrawList_AddTriangleFilled");
    igNewFrame = bind!igNewFrame_t0(handle, "igNewFrame");
    ImDrawList_ChannelsSetCurrent = bind!ImDrawList_ChannelsSetCurrent_t0(handle, "ImDrawList_ChannelsSetCurrent");
    igSliderFloat2 = bind!igSliderFloat2_t0(handle, "igSliderFloat2");
    TextRange_end = bind!TextRange_end_t0(handle, "TextRange_end");
    ImDrawList_AddImageQuad = bind!ImDrawList_AddImageQuad_t0(handle, "ImDrawList_AddImageQuad");
    ImFontAtlas_GetCustomRectByIndex = bind!ImFontAtlas_GetCustomRectByIndex_t0(handle, "ImFontAtlas_GetCustomRectByIndex");
    ImFontAtlas_GetTexDataAsAlpha8 = bind!ImFontAtlas_GetTexDataAsAlpha8_t0(handle, "ImFontAtlas_GetTexDataAsAlpha8");
    igGetCursorScreenPos = bind!igGetCursorScreenPos_t0(handle, "igGetCursorScreenPos");
    igGetCursorScreenPos_nonUDT = bind!igGetCursorScreenPos_nonUDT_t1(handle, "igGetCursorScreenPos_nonUDT");
    igPushAllowKeyboardFocus = bind!igPushAllowKeyboardFocus_t0(handle, "igPushAllowKeyboardFocus");
    ImDrawList_PopTextureID = bind!ImDrawList_PopTextureID_t0(handle, "ImDrawList_PopTextureID");
    igColumns = bind!igColumns_t0(handle, "igColumns");
    ImFontGlyphRangesBuilder_AddChar = bind!ImFontGlyphRangesBuilder_AddChar_t0(handle, "ImFontGlyphRangesBuilder_AddChar");
    igGetColumnIndex = bind!igGetColumnIndex_t0(handle, "igGetColumnIndex");
    ImDrawList_PrimVtx = bind!ImDrawList_PrimVtx_t0(handle, "ImDrawList_PrimVtx");
    ImDrawList_AddConvexPolyFilled = bind!ImDrawList_AddConvexPolyFilled_t0(handle, "ImDrawList_AddConvexPolyFilled");
    igListBoxStr_arr = bind!igListBoxStr_arr_t0(handle, "igListBoxStr_arr");
    igListBoxFnPtr = bind!igListBoxFnPtr_t1(handle, "igListBoxFnPtr");
    igTreeNodeVStr = bind!igTreeNodeVStr_t0(handle, "igTreeNodeVStr");
    igTreeNodeVPtr = bind!igTreeNodeVPtr_t1(handle, "igTreeNodeVPtr");
    ImGuiStorage_GetFloatRef = bind!ImGuiStorage_GetFloatRef_t0(handle, "ImGuiStorage_GetFloatRef");
    TextRange_TextRange = bind!TextRange_TextRange_t0(handle, "TextRange_TextRange");
    TextRange_TextRangeStr = bind!TextRange_TextRangeStr_t1(handle, "TextRange_TextRangeStr");
    igValueBool = bind!igValueBool_t0(handle, "igValueBool");
    igValueInt = bind!igValueInt_t1(handle, "igValueInt");
    igValueUint = bind!igValueUint_t2(handle, "igValueUint");
    igValueFloat = bind!igValueFloat_t3(handle, "igValueFloat");
    igBeginTabItem = bind!igBeginTabItem_t0(handle, "igBeginTabItem");
    igDragFloat4 = bind!igDragFloat4_t0(handle, "igDragFloat4");
    igPushIDStr = bind!igPushIDStr_t0(handle, "igPushIDStr");
    igPushIDRange = bind!igPushIDRange_t1(handle, "igPushIDRange");
    igPushIDPtr = bind!igPushIDPtr_t2(handle, "igPushIDPtr");
    igPushIDInt = bind!igPushIDInt_t3(handle, "igPushIDInt");
    ImFontAtlas_AddFontFromMemoryTTF = bind!ImFontAtlas_AddFontFromMemoryTTF_t0(handle, "ImFontAtlas_AddFontFromMemoryTTF");
    igTextDisabledV = bind!igTextDisabledV_t0(handle, "igTextDisabledV");
    igInputScalar = bind!igInputScalar_t0(handle, "igInputScalar");
    CustomRect_CustomRect = bind!CustomRect_CustomRect_t0(handle, "CustomRect_CustomRect");
    Pair_PairInt = bind!Pair_PairInt_t0(handle, "Pair_PairInt");
    Pair_PairFloat = bind!Pair_PairFloat_t1(handle, "Pair_PairFloat");
    Pair_PairPtr = bind!Pair_PairPtr_t2(handle, "Pair_PairPtr");
    ImColor_SetHSV = bind!ImColor_SetHSV_t0(handle, "ImColor_SetHSV");
    igLogToTTY = bind!igLogToTTY_t0(handle, "igLogToTTY");
    igIsItemVisible = bind!igIsItemVisible_t0(handle, "igIsItemVisible");
    igRender = bind!igRender_t0(handle, "igRender");
    igBeginChild = bind!igBeginChild_t0(handle, "igBeginChild");
    igBeginChildID = bind!igBeginChildID_t1(handle, "igBeginChildID");
    igStyleColorsLight = bind!igStyleColorsLight_t0(handle, "igStyleColorsLight");
    igGetScrollX = bind!igGetScrollX_t0(handle, "igGetScrollX");
    ImFontAtlas_GetTexDataAsRGBA32 = bind!ImFontAtlas_GetTexDataAsRGBA32_t0(handle, "ImFontAtlas_GetTexDataAsRGBA32");
    ImGuiOnceUponAFrame_ImGuiOnceUponAFrame = bind!ImGuiOnceUponAFrame_ImGuiOnceUponAFrame_t0(handle, "ImGuiOnceUponAFrame_ImGuiOnceUponAFrame");
    ImDrawData_destroy = bind!ImDrawData_destroy_t0(handle, "ImDrawData_destroy");
    ImFont_SetFallbackChar = bind!ImFont_SetFallbackChar_t0(handle, "ImFont_SetFallbackChar");
    igSaveIniSettingsToMemory = bind!igSaveIniSettingsToMemory_t0(handle, "igSaveIniSettingsToMemory");
    igGetWindowHeight = bind!igGetWindowHeight_t0(handle, "igGetWindowHeight");
    ImGuiTextFilter_PassFilter = bind!ImGuiTextFilter_PassFilter_t0(handle, "ImGuiTextFilter_PassFilter");
    ImFontAtlas_AddFontFromMemoryCompressedBase85TTF = bind!ImFontAtlas_AddFontFromMemoryCompressedBase85TTF_t0(handle, "ImFontAtlas_AddFontFromMemoryCompressedBase85TTF");
    ImFontAtlas_AddFontFromFileTTF = bind!ImFontAtlas_AddFontFromFileTTF_t0(handle, "ImFontAtlas_AddFontFromFileTTF");
    igGetCurrentContext = bind!igGetCurrentContext_t0(handle, "igGetCurrentContext");
    igColorConvertU32ToFloat4 = bind!igColorConvertU32ToFloat4_t0(handle, "igColorConvertU32ToFloat4");
    igColorConvertU32ToFloat4_nonUDT = bind!igColorConvertU32ToFloat4_nonUDT_t1(handle, "igColorConvertU32ToFloat4_nonUDT");
    ImDrawList_PathArcToFast = bind!ImDrawList_PathArcToFast_t0(handle, "ImDrawList_PathArcToFast");
    igDragFloat = bind!igDragFloat_t0(handle, "igDragFloat");
    igGetStyleColorName = bind!igGetStyleColorName_t0(handle, "igGetStyleColorName");
    igSetItemDefaultFocus = bind!igSetItemDefaultFocus_t0(handle, "igSetItemDefaultFocus");
    igCalcListClipping = bind!igCalcListClipping_t0(handle, "igCalcListClipping");
    igSetNextWindowPos = bind!igSetNextWindowPos_t0(handle, "igSetNextWindowPos");
    igDragFloat3 = bind!igDragFloat3_t0(handle, "igDragFloat3");
    igCaptureKeyboardFromApp = bind!igCaptureKeyboardFromApp_t0(handle, "igCaptureKeyboardFromApp");
    igInputInt3 = bind!igInputInt3_t0(handle, "igInputInt3");
    ImDrawData_Clear = bind!ImDrawData_Clear_t0(handle, "ImDrawData_Clear");
    ImFontAtlas_AddFontFromMemoryCompressedTTF = bind!ImFontAtlas_AddFontFromMemoryCompressedTTF_t0(handle, "ImFontAtlas_AddFontFromMemoryCompressedTTF");
    ImDrawList_AddText = bind!ImDrawList_AddText_t0(handle, "ImDrawList_AddText");
    ImDrawList_AddTextFontPtr = bind!ImDrawList_AddTextFontPtr_t1(handle, "ImDrawList_AddTextFontPtr");
    ImDrawList_PrimRectUV = bind!ImDrawList_PrimRectUV_t0(handle, "ImDrawList_PrimRectUV");
    ImDrawList_PrimWriteIdx = bind!ImDrawList_PrimWriteIdx_t0(handle, "ImDrawList_PrimWriteIdx");
    ImGuiStorage_GetBool = bind!ImGuiStorage_GetBool_t0(handle, "ImGuiStorage_GetBool");
    igTextWrapped = bind!igTextWrapped_t0(handle, "igTextWrapped");
    igInputInt = bind!igInputInt_t0(handle, "igInputInt");
    ImVec2_ImVec2 = bind!ImVec2_ImVec2_t0(handle, "ImVec2_ImVec2");
    ImVec2_ImVec2Float = bind!ImVec2_ImVec2Float_t1(handle, "ImVec2_ImVec2Float");
    ImGuiTextBuffer_size = bind!ImGuiTextBuffer_size_t0(handle, "ImGuiTextBuffer_size");
    ImFontAtlas_GetGlyphRangesDefault = bind!ImFontAtlas_GetGlyphRangesDefault_t0(handle, "ImFontAtlas_GetGlyphRangesDefault");
    ImFontAtlas_ClearTexData = bind!ImFontAtlas_ClearTexData_t0(handle, "ImFontAtlas_ClearTexData");
    ImFont_GetCharAdvance = bind!ImFont_GetCharAdvance_t0(handle, "ImFont_GetCharAdvance");
    igSliderFloat3 = bind!igSliderFloat3_t0(handle, "igSliderFloat3");
    ImDrawList_AddBezierCurve = bind!ImDrawList_AddBezierCurve_t0(handle, "ImDrawList_AddBezierCurve");
    ImDrawList_PathFillConvex = bind!ImDrawList_PathFillConvex_t0(handle, "ImDrawList_PathFillConvex");
    ImGuiTextBuffer_ImGuiTextBuffer = bind!ImGuiTextBuffer_ImGuiTextBuffer_t0(handle, "ImGuiTextBuffer_ImGuiTextBuffer");
    igSliderAngle = bind!igSliderAngle_t0(handle, "igSliderAngle");
    igSetWindowPosVec2 = bind!igSetWindowPosVec2_t0(handle, "igSetWindowPosVec2");
    igSetWindowPosStr = bind!igSetWindowPosStr_t1(handle, "igSetWindowPosStr");
    igSetScrollHereY = bind!igSetScrollHereY_t0(handle, "igSetScrollHereY");
    ImDrawList_CloneOutput = bind!ImDrawList_CloneOutput_t0(handle, "ImDrawList_CloneOutput");
    ImFontGlyphRangesBuilder_destroy = bind!ImFontGlyphRangesBuilder_destroy_t0(handle, "ImFontGlyphRangesBuilder_destroy");
    igProgressBar = bind!igProgressBar_t0(handle, "igProgressBar");
    igIsItemDeactivated = bind!igIsItemDeactivated_t0(handle, "igIsItemDeactivated");
    igBulletText = bind!igBulletText_t0(handle, "igBulletText");
    ImDrawList_AddQuad = bind!ImDrawList_AddQuad_t0(handle, "ImDrawList_AddQuad");
    igGetColorU32 = bind!igGetColorU32_t0(handle, "igGetColorU32");
    igGetColorU32Vec4 = bind!igGetColorU32Vec4_t1(handle, "igGetColorU32Vec4");
    igGetColorU32U32 = bind!igGetColorU32U32_t2(handle, "igGetColorU32U32");
    ImDrawList_AddDrawCmd = bind!ImDrawList_AddDrawCmd_t0(handle, "ImDrawList_AddDrawCmd");
    igSetCursorPosX = bind!igSetCursorPosX_t0(handle, "igSetCursorPosX");
    igInputFloat4 = bind!igInputFloat4_t0(handle, "igInputFloat4");
    igSeparator = bind!igSeparator_t0(handle, "igSeparator");
    igGetKeyIndex = bind!igGetKeyIndex_t0(handle, "igGetKeyIndex");
    ImDrawList_PrimWriteVtx = bind!ImDrawList_PrimWriteVtx_t0(handle, "ImDrawList_PrimWriteVtx");
    ImGuiPayload_IsDataType = bind!ImGuiPayload_IsDataType_t0(handle, "ImGuiPayload_IsDataType");
    igSetWindowSizeVec2 = bind!igSetWindowSizeVec2_t0(handle, "igSetWindowSizeVec2");
    igSetWindowSizeStr = bind!igSetWindowSizeStr_t1(handle, "igSetWindowSizeStr");
    igTreePop = bind!igTreePop_t0(handle, "igTreePop");
    ImFont_AddRemapChar = bind!ImFont_AddRemapChar_t0(handle, "ImFont_AddRemapChar");
    igText = bind!igText_t0(handle, "igText");
    igIsItemFocused = bind!igIsItemFocused_t0(handle, "igIsItemFocused");
    igMemAlloc = bind!igMemAlloc_t0(handle, "igMemAlloc");
    igColorPicker3 = bind!igColorPicker3_t0(handle, "igColorPicker3");
    ImGuiTextBuffer_destroy = bind!ImGuiTextBuffer_destroy_t0(handle, "ImGuiTextBuffer_destroy");
    igGetColumnOffset = bind!igGetColumnOffset_t0(handle, "igGetColumnOffset");
    igIsWindowCollapsed = bind!igIsWindowCollapsed_t0(handle, "igIsWindowCollapsed");
    igBeginCombo = bind!igBeginCombo_t0(handle, "igBeginCombo");
    igOpenPopup = bind!igOpenPopup_t0(handle, "igOpenPopup");
    igInputScalarN = bind!igInputScalarN_t0(handle, "igInputScalarN");
    igPopID = bind!igPopID_t0(handle, "igPopID");
    ImDrawList_PrimQuadUV = bind!ImDrawList_PrimQuadUV_t0(handle, "ImDrawList_PrimQuadUV");
    igEndTabBar = bind!igEndTabBar_t0(handle, "igEndTabBar");
    ImDrawList_AddImage = bind!ImDrawList_AddImage_t0(handle, "ImDrawList_AddImage");
    igBeginTabBar = bind!igBeginTabBar_t0(handle, "igBeginTabBar");
    igGetCursorPosY = bind!igGetCursorPosY_t0(handle, "igGetCursorPosY");
    igCalcTextSize = bind!igCalcTextSize_t0(handle, "igCalcTextSize");
    igCalcTextSize_nonUDT = bind!igCalcTextSize_nonUDT_t1(handle, "igCalcTextSize_nonUDT");
    ImFont_CalcTextSizeA = bind!ImFont_CalcTextSizeA_t0(handle, "ImFont_CalcTextSizeA");
    ImFont_CalcTextSizeA_nonUDT = bind!ImFont_CalcTextSizeA_nonUDT_t1(handle, "ImFont_CalcTextSizeA_nonUDT");
    igPopAllowKeyboardFocus = bind!igPopAllowKeyboardFocus_t0(handle, "igPopAllowKeyboardFocus");
    igGetColumnWidth = bind!igGetColumnWidth_t0(handle, "igGetColumnWidth");
    ImDrawList_Clear = bind!ImDrawList_Clear_t0(handle, "ImDrawList_Clear");
    ImGuiPayload_Clear = bind!ImGuiPayload_Clear_t0(handle, "ImGuiPayload_Clear");
    ImGuiTextBuffer_reserve = bind!ImGuiTextBuffer_reserve_t0(handle, "ImGuiTextBuffer_reserve");
    igGetFontTexUvWhitePixel = bind!igGetFontTexUvWhitePixel_t0(handle, "igGetFontTexUvWhitePixel");
    igGetFontTexUvWhitePixel_nonUDT = bind!igGetFontTexUvWhitePixel_nonUDT_t1(handle, "igGetFontTexUvWhitePixel_nonUDT");
    ImDrawList_ChannelsSplit = bind!ImDrawList_ChannelsSplit_t0(handle, "ImDrawList_ChannelsSplit");
    igPopFont = bind!igPopFont_t0(handle, "igPopFont");
    ImDrawList_AddRect = bind!ImDrawList_AddRect_t0(handle, "ImDrawList_AddRect");
    igGetDrawListSharedData = bind!igGetDrawListSharedData_t0(handle, "igGetDrawListSharedData");
    ImFontGlyphRangesBuilder_GetBit = bind!ImFontGlyphRangesBuilder_GetBit_t0(handle, "ImFontGlyphRangesBuilder_GetBit");
    ImFontAtlas_AddFont = bind!ImFontAtlas_AddFont_t0(handle, "ImFontAtlas_AddFont");
    ImGui_ImplOpenGL3_DestroyFontsTexture = bind!ImGui_ImplOpenGL3_DestroyFontsTexture_t0(handle, "ImGui_ImplOpenGL3_DestroyFontsTexture");
    ImGui_ImplOpenGL3_CreateFontsTexture = bind!ImGui_ImplOpenGL3_CreateFontsTexture_t0(handle, "ImGui_ImplOpenGL3_CreateFontsTexture");
    ImGui_ImplGlfw_NewFrame = bind!ImGui_ImplGlfw_NewFrame_t0(handle, "ImGui_ImplGlfw_NewFrame");
    ImGui_ImplGlfw_InitForVulkan = bind!ImGui_ImplGlfw_InitForVulkan_t0(handle, "ImGui_ImplGlfw_InitForVulkan");
    ImGui_ImplOpenGL3_CreateDeviceObjects = bind!ImGui_ImplOpenGL3_CreateDeviceObjects_t0(handle, "ImGui_ImplOpenGL3_CreateDeviceObjects");
    ImGui_ImplGlfw_CharCallback = bind!ImGui_ImplGlfw_CharCallback_t0(handle, "ImGui_ImplGlfw_CharCallback");
    ImGui_ImplOpenGL3_Init = bind!ImGui_ImplOpenGL3_Init_t0(handle, "ImGui_ImplOpenGL3_Init");
    ImGui_ImplOpenGL3_DestroyDeviceObjects = bind!ImGui_ImplOpenGL3_DestroyDeviceObjects_t0(handle, "ImGui_ImplOpenGL3_DestroyDeviceObjects");
    ImGui_ImplOpenGL3_NewFrame = bind!ImGui_ImplOpenGL3_NewFrame_t0(handle, "ImGui_ImplOpenGL3_NewFrame");
    ImGui_ImplGlfw_InitForOpenGL = bind!ImGui_ImplGlfw_InitForOpenGL_t0(handle, "ImGui_ImplGlfw_InitForOpenGL");
    ImGui_ImplGlfw_KeyCallback = bind!ImGui_ImplGlfw_KeyCallback_t0(handle, "ImGui_ImplGlfw_KeyCallback");
    ImGui_ImplOpenGL3_Shutdown = bind!ImGui_ImplOpenGL3_Shutdown_t0(handle, "ImGui_ImplOpenGL3_Shutdown");
    ImGui_ImplGlfw_ScrollCallback = bind!ImGui_ImplGlfw_ScrollCallback_t0(handle, "ImGui_ImplGlfw_ScrollCallback");
    ImGui_ImplGlfw_MouseButtonCallback = bind!ImGui_ImplGlfw_MouseButtonCallback_t0(handle, "ImGui_ImplGlfw_MouseButtonCallback");
    ImGui_ImplGlfw_Shutdown = bind!ImGui_ImplGlfw_Shutdown_t0(handle, "ImGui_ImplGlfw_Shutdown");
    ImGui_ImplOpenGL3_RenderDrawData = bind!ImGui_ImplOpenGL3_RenderDrawData_t0(handle, "ImGui_ImplOpenGL3_RenderDrawData");
return true;
}

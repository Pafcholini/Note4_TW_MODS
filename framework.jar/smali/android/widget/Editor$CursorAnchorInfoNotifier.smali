.class final Landroid/widget/Editor$CursorAnchorInfoNotifier;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CursorAnchorInfoNotifier"
.end annotation


# instance fields
.field final mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

.field final mTmpIntOffset:[I

.field final mViewToScreenMatrix:Landroid/graphics/Matrix;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .prologue
    .line 4130
    iput-object p1, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4131
    new-instance v0, Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    invoke-direct {v0}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4132
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    .line 4133
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 4130
    invoke-direct {p0, p1}, Landroid/widget/Editor$CursorAnchorInfoNotifier;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public updatePosition(IIZZ)V
    .locals 54
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 4138
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    iget-object v0, v11, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    move-object/from16 v24, v0

    .line 4139
    .local v24, "ims":Landroid/widget/Editor$InputMethodState;
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    iget v11, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-lez v11, :cond_1

    .line 4288
    :cond_0
    :goto_0
    return-void

    .line 4142
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v23

    .line 4143
    .local v23, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v23, :cond_0

    .line 4146
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4150
    invoke-virtual/range {v23 .. v23}, Landroid/view/inputmethod/InputMethodManager;->isCursorAnchorInfoEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 4153
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v30

    .line 4154
    .local v30, "layout":Landroid/text/Layout;
    if-eqz v30, :cond_0

    .line 4158
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mSelectionInfoBuilder:Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4159
    .local v4, "builder":Landroid/view/inputmethod/CursorAnchorInfo$Builder;
    invoke-virtual {v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->reset()V

    .line 4161
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v43

    .line 4162
    .local v43, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v11

    move/from16 v0, v43

    invoke-virtual {v4, v0, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setSelectionRange(II)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4165
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    move-object/from16 v51, v0

    invoke-static/range {v51 .. v51}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/widget/TextView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v11, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 4166
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    move-object/from16 v51, v0

    const/16 v52, 0x0

    aget v51, v51, v52

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mTmpIntOffset:[I

    move-object/from16 v52, v0

    const/16 v53, 0x1

    aget v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 4168
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->mViewToScreenMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v11}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setMatrix(Landroid/graphics/Matrix;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4170
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v11

    int-to-float v0, v11

    move/from16 v48, v0

    .line 4172
    .local v48, "viewportToContentHorizontalOffset":F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v11

    int-to-float v0, v11

    move/from16 v49, v0

    .line 4175
    .local v49, "viewportToContentVerticalOffset":F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v46

    .line 4176
    .local v46, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, v46

    instance-of v11, v0, Landroid/text/Spannable;

    if-eqz v11, :cond_e

    move-object/from16 v44, v46

    .line 4177
    check-cast v44, Landroid/text/Spannable;

    .line 4178
    .local v44, "sp":Landroid/text/Spannable;
    invoke-static/range {v44 .. v44}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v21

    .line 4179
    .local v21, "composingTextStart":I
    invoke-static/range {v44 .. v44}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v20

    .line 4180
    .local v20, "composingTextEnd":I
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 4181
    move/from16 v45, v20

    .line 4182
    .local v45, "temp":I
    move/from16 v20, v21

    .line 4183
    move/from16 v21, v45

    .line 4185
    .end local v45    # "temp":I
    :cond_2
    if-ltz v21, :cond_8

    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const/16 v22, 0x1

    .line 4187
    .local v22, "hasComposingText":Z
    :goto_1
    if-eqz v22, :cond_e

    .line 4188
    move-object/from16 v0, v46

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v19

    .line 4190
    .local v19, "composingText":Ljava/lang/CharSequence;
    move/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setComposingText(ILjava/lang/CharSequence;)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4192
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v37

    .line 4193
    .local v37, "minLine":I
    add-int/lit8 v11, v20, -0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v36

    .line 4194
    .local v36, "maxLine":I
    move/from16 v32, v37

    .local v32, "line":I
    :goto_2
    move/from16 v0, v32

    move/from16 v1, v36

    if-gt v0, v1, :cond_e

    .line 4195
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v34

    .line 4196
    .local v34, "lineStart":I
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v33

    .line 4197
    .local v33, "lineEnd":I
    move/from16 v0, v34

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 4198
    .local v39, "offsetStart":I
    move/from16 v0, v33

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v38

    .line 4199
    .local v38, "offsetEnd":I
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    const/16 v51, 0x1

    move/from16 v0, v51

    if-ne v11, v0, :cond_9

    const/16 v35, 0x1

    .line 4201
    .local v35, "ltrLine":Z
    :goto_3
    sub-int v11, v38, v39

    new-array v0, v11, [F

    move-object/from16 v50, v0

    .line 4202
    .local v50, "widths":[F
    invoke-virtual/range {v30 .. v30}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v11

    move-object/from16 v0, v46

    move/from16 v1, v39

    move/from16 v2, v38

    move-object/from16 v3, v50

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    .line 4203
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v0, v11

    move/from16 v47, v0

    .line 4204
    .local v47, "top":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    int-to-float v0, v11

    move/from16 v17, v0

    .line 4205
    .local v17, "bottom":F
    move/from16 v5, v39

    .local v5, "offset":I
    :goto_4
    move/from16 v0, v38

    if-ge v5, v0, :cond_d

    .line 4206
    sub-int v11, v5, v39

    aget v18, v50, v11

    .line 4207
    .local v18, "charWidth":F
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v27

    .line 4208
    .local v27, "isRtl":Z
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v40

    .line 4209
    .local v40, "primary":F
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v42

    .line 4214
    .local v42, "secondary":F
    if-eqz v35, :cond_b

    .line 4215
    if-eqz v27, :cond_a

    .line 4216
    sub-float v31, v42, v18

    .line 4217
    .local v31, "left":F
    move/from16 v41, v42

    .line 4232
    .local v41, "right":F
    :goto_5
    add-float v6, v31, v48

    .line 4233
    .local v6, "localLeft":F
    add-float v8, v41, v48

    .line 4234
    .local v8, "localRight":F
    add-float v7, v47, v49

    .line 4235
    .local v7, "localTop":F
    add-float v9, v17, v49

    .line 4236
    .local v9, "localBottom":F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v6, v7}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;FF)Z

    move-result v28

    .line 4237
    .local v28, "isTopLeftVisible":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v8, v9}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;FF)Z

    move-result v25

    .line 4239
    .local v25, "isBottomRightVisible":Z
    const/4 v10, 0x0

    .line 4240
    .local v10, "characterBoundsFlags":I
    if-nez v28, :cond_3

    if-eqz v25, :cond_4

    .line 4241
    :cond_3
    or-int/lit8 v10, v10, 0x1

    .line 4243
    :cond_4
    if-eqz v28, :cond_5

    if-nez v28, :cond_6

    .line 4244
    :cond_5
    or-int/lit8 v10, v10, 0x2

    .line 4246
    :cond_6
    if-eqz v27, :cond_7

    .line 4247
    or-int/lit8 v10, v10, 0x4

    .line 4250
    :cond_7
    invoke-virtual/range {v4 .. v10}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->addCharacterBounds(IFFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4205
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 4185
    .end local v5    # "offset":I
    .end local v6    # "localLeft":F
    .end local v7    # "localTop":F
    .end local v8    # "localRight":F
    .end local v9    # "localBottom":F
    .end local v10    # "characterBoundsFlags":I
    .end local v17    # "bottom":F
    .end local v18    # "charWidth":F
    .end local v19    # "composingText":Ljava/lang/CharSequence;
    .end local v22    # "hasComposingText":Z
    .end local v25    # "isBottomRightVisible":Z
    .end local v27    # "isRtl":Z
    .end local v28    # "isTopLeftVisible":Z
    .end local v31    # "left":F
    .end local v32    # "line":I
    .end local v33    # "lineEnd":I
    .end local v34    # "lineStart":I
    .end local v35    # "ltrLine":Z
    .end local v36    # "maxLine":I
    .end local v37    # "minLine":I
    .end local v38    # "offsetEnd":I
    .end local v39    # "offsetStart":I
    .end local v40    # "primary":F
    .end local v41    # "right":F
    .end local v42    # "secondary":F
    .end local v47    # "top":F
    .end local v50    # "widths":[F
    :cond_8
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 4199
    .restart local v19    # "composingText":Ljava/lang/CharSequence;
    .restart local v22    # "hasComposingText":Z
    .restart local v32    # "line":I
    .restart local v33    # "lineEnd":I
    .restart local v34    # "lineStart":I
    .restart local v36    # "maxLine":I
    .restart local v37    # "minLine":I
    .restart local v38    # "offsetEnd":I
    .restart local v39    # "offsetStart":I
    :cond_9
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 4219
    .restart local v5    # "offset":I
    .restart local v17    # "bottom":F
    .restart local v18    # "charWidth":F
    .restart local v27    # "isRtl":Z
    .restart local v35    # "ltrLine":Z
    .restart local v40    # "primary":F
    .restart local v42    # "secondary":F
    .restart local v47    # "top":F
    .restart local v50    # "widths":[F
    :cond_a
    move/from16 v31, v40

    .line 4220
    .restart local v31    # "left":F
    add-float v41, v40, v18

    .restart local v41    # "right":F
    goto :goto_5

    .line 4223
    .end local v31    # "left":F
    .end local v41    # "right":F
    :cond_b
    if-nez v27, :cond_c

    .line 4224
    move/from16 v31, v42

    .line 4225
    .restart local v31    # "left":F
    add-float v41, v42, v18

    .restart local v41    # "right":F
    goto :goto_5

    .line 4227
    .end local v31    # "left":F
    .end local v41    # "right":F
    :cond_c
    sub-float v31, v40, v18

    .line 4228
    .restart local v31    # "left":F
    move/from16 v41, v40

    .restart local v41    # "right":F
    goto :goto_5

    .line 4194
    .end local v18    # "charWidth":F
    .end local v27    # "isRtl":Z
    .end local v31    # "left":F
    .end local v40    # "primary":F
    .end local v41    # "right":F
    .end local v42    # "secondary":F
    :cond_d
    add-int/lit8 v32, v32, 0x1

    goto/16 :goto_2

    .line 4258
    .end local v5    # "offset":I
    .end local v17    # "bottom":F
    .end local v19    # "composingText":Ljava/lang/CharSequence;
    .end local v20    # "composingTextEnd":I
    .end local v21    # "composingTextStart":I
    .end local v22    # "hasComposingText":Z
    .end local v32    # "line":I
    .end local v33    # "lineEnd":I
    .end local v34    # "lineStart":I
    .end local v35    # "ltrLine":Z
    .end local v36    # "maxLine":I
    .end local v37    # "minLine":I
    .end local v38    # "offsetEnd":I
    .end local v39    # "offsetStart":I
    .end local v44    # "sp":Landroid/text/Spannable;
    .end local v47    # "top":F
    .end local v50    # "widths":[F
    :cond_e
    if-ltz v43, :cond_14

    .line 4259
    move/from16 v5, v43

    .line 4260
    .restart local v5    # "offset":I
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v32

    .line 4261
    .restart local v32    # "line":I
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v11

    add-float v12, v11, v48

    .line 4263
    .local v12, "insertionMarkerX":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    add-float v13, v11, v49

    .line 4265
    .local v13, "insertionMarkerTop":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v11

    int-to-float v11, v11

    add-float v14, v11, v49

    .line 4267
    .local v14, "insertionMarkerBaseline":F
    move-object/from16 v0, v30

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    int-to-float v11, v11

    add-float v15, v11, v49

    .line 4269
    .local v15, "insertionMarkerBottom":F
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v12, v13}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;FF)Z

    move-result v29

    .line 4271
    .local v29, "isTopVisible":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11, v12, v15}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;FF)Z

    move-result v26

    .line 4273
    .local v26, "isBottomVisible":Z
    const/16 v16, 0x0

    .line 4274
    .local v16, "insertionMarkerFlags":I
    if-nez v29, :cond_f

    if-eqz v26, :cond_10

    .line 4275
    :cond_f
    or-int/lit8 v16, v16, 0x1

    .line 4277
    :cond_10
    if-eqz v29, :cond_11

    if-nez v26, :cond_12

    .line 4278
    :cond_11
    or-int/lit8 v16, v16, 0x2

    .line 4280
    :cond_12
    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 4281
    or-int/lit8 v16, v16, 0x4

    :cond_13
    move-object v11, v4

    .line 4283
    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->setInsertionMarkerLocation(FFFFI)Landroid/view/inputmethod/CursorAnchorInfo$Builder;

    .line 4287
    .end local v5    # "offset":I
    .end local v12    # "insertionMarkerX":F
    .end local v13    # "insertionMarkerTop":F
    .end local v14    # "insertionMarkerBaseline":F
    .end local v15    # "insertionMarkerBottom":F
    .end local v16    # "insertionMarkerFlags":I
    .end local v26    # "isBottomVisible":Z
    .end local v29    # "isTopVisible":Z
    .end local v32    # "line":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/Editor$CursorAnchorInfoNotifier;->this$0:Landroid/widget/Editor;

    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v4}, Landroid/view/inputmethod/CursorAnchorInfo$Builder;->build()Landroid/view/inputmethod/CursorAnchorInfo;

    move-result-object v51

    move-object/from16 v0, v23

    move-object/from16 v1, v51

    invoke-virtual {v0, v11, v1}, Landroid/view/inputmethod/InputMethodManager;->updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V

    goto/16 :goto_0
.end method

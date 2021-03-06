.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 5133
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 5134
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5135
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHandleType:I

    .line 5136
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .locals 5

    .prologue
    .line 5256
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5257
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v2

    .line 5258
    .local v2, "positionListener":Landroid/widget/Editor$PositionListener;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 5260
    .local v1, "iconSize":I
    iget v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    invoke-virtual {v2}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5212
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5213
    .local v0, "bSwitchCursor":Z
    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5215
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    iput-boolean v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5217
    invoke-direct {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5218
    iput-boolean v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 5221
    :cond_0
    iget-boolean v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eq v0, v5, :cond_1

    .line 5222
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5223
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 5224
    .local v2, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    sub-float/2addr v4, v5

    iget v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    .line 5225
    iget v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionX:I

    .line 5228
    .end local v2    # "layout":Landroid/text/Layout;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 5154
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 5149
    if-eqz p1, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 5140
    if-eqz p2, :cond_0

    .line 5141
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 5143
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 5194
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 5195
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    .line 5197
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->calculateForSwitchingCursor()Z

    .line 5198
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPositionHasChanged:Z

    .line 5199
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->invalidate()V

    .line 5201
    :cond_0
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 5204
    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_1

    .line 5205
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 5206
    const/4 v0, 0x1

    .line 5208
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionPopupWindow(Landroid/widget/Editor$ActionPopupWindow;)V
    .locals 0
    .param p1, "actionPopupWindow"    # Landroid/widget/Editor$ActionPopupWindow;

    .prologue
    .line 5184
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 5185
    return-void
.end method

.method public setNewActionPopupWindow(Landroid/widget/Editor$NewActionPopupWindow;)V
    .locals 0
    .param p1, "newActionPopupWindow"    # Landroid/widget/Editor$NewActionPopupWindow;

    .prologue
    .line 5188
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    .line 5189
    return-void
.end method

.method protected updateDrawable()V
    .locals 4

    .prologue
    .line 5232
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 5233
    invoke-super {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 5253
    :cond_0
    :goto_0
    return-void

    .line 5237
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 5238
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5239
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 5241
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_2

    .line 5242
    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 5245
    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5247
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/Editor$SelectionEndHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mHotspotX:I

    .line 5249
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_0

    .line 5250
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->recalHandleView()V

    .line 5251
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->invalidate()V

    goto :goto_0

    .line 5242
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 5245
    :cond_4
    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public updatePosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 5166
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 5169
    .local v0, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5171
    .local v1, "selectionStart":I
    iget-object v2, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5172
    if-gt v0, v1, :cond_0

    .line 5173
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5180
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 5181
    :goto_0
    return-void

    .line 5176
    :cond_1
    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 5159
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 5161
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 5162
    return-void
.end method

.class Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;
.super Landroid/widget/MultiSelectPopupWindow$HandleView;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MultiSelectPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MultiSelectPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1567
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    .line 1568
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1569
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHandleType:I

    .line 1570
    return-void
.end method

.method private isHandleViewScreenOut()Z
    .locals 5

    .prologue
    .line 1672
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1673
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->this$0:Landroid/widget/MultiSelectPopupWindow;

    invoke-static {v3}, Landroid/widget/MultiSelectPopupWindow;->access$400(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v2

    .line 1674
    .local v2, "positionListener":Landroid/widget/MultiSelectPopupWindow$PositionListener;
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 1676
    .local v1, "iconSize":I
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    invoke-virtual {v2}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->getPositionX()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

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
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1636
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 1637
    .local v0, "bSwitchCursor":Z
    iput-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 1639
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1640
    iput-boolean v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    .line 1643
    :cond_0
    iget-boolean v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eq v0, v4, :cond_1

    .line 1644
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->updateDrawable()V

    .line 1645
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1646
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    .line 1647
    iget v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionX:I

    .line 1650
    .end local v1    # "layout":Landroid/text/Layout;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public getCurrentCursorOffset()I
    .locals 3

    .prologue
    .line 1583
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1584
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1585
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    return v1
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 1574
    if-eqz p2, :cond_0

    .line 1575
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 1577
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected positionAtCursorOffset(IZZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentPositionChanged"    # Z
    .param p3, "parentScrolled"    # Z

    .prologue
    .line 1619
    invoke-super {p0, p1, p2, p3}, Landroid/widget/MultiSelectPopupWindow$HandleView;->positionAtCursorOffset(IZZ)V

    .line 1620
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    .line 1621
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->calculateForSwitchingCursor()Z

    .line 1622
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mPositionHasChanged:Z

    .line 1623
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->invalidate()V

    .line 1625
    :cond_0
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 1628
    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->isHandleViewScreenOut()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-nez v0, :cond_1

    .line 1629
    :cond_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 1630
    const/4 v0, 0x1

    .line 1632
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 4

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 1655
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1656
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 1658
    .local v0, "isRtlCharAtOffset":Z
    iget-boolean v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_0

    .line 1659
    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1662
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1663
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mHotspotX:I

    .line 1665
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_1

    .line 1666
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->recalHandleView()V

    .line 1667
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->invalidate()V

    .line 1669
    :cond_1
    return-void

    .line 1659
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1662
    :cond_3
    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public updatePosition(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x0

    .line 1605
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1606
    .local v0, "offset":I
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1607
    .local v2, "text":Ljava/lang/CharSequence;
    if-nez v2, :cond_0

    .line 1608
    const-string v3, "MultiSelectPopupWindow"

    const-string v4, "getTextFormultiSelection() text is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_0
    invoke-static {v2}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    .line 1612
    .local v1, "selectionStart":I
    if-ne v0, v1, :cond_1

    .line 1616
    :goto_0
    return-void

    .line 1615
    :cond_1
    invoke-virtual {p0, v0, v5, v5}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->positionAtCursorOffset(IZZ)V

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 1593
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1594
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1595
    const-string v1, "MultiSelectPopupWindow"

    const-string v2, "getTextFormultiSelection() text is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_0
    invoke-static {}, Landroid/widget/MultiSelectPopupWindow;->access$000()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->playPenSelectionVibrator()Z

    move-object v1, v0

    .line 1599
    check-cast v1, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/text/MultiSelection;->setSelection(Landroid/text/Spannable;II)V

    .line 1600
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;->updateDrawable()V

    .line 1601
    return-void
.end method

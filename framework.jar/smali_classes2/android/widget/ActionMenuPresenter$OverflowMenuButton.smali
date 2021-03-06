.class Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowMenuButton"
.end annotation


# instance fields
.field private final mTempPts:[F

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 638
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 639
    const/4 v0, 0x0

    const v1, 0x10102f6

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 636
    new-array v0, v3, [F

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 641
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V

    .line 642
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V

    .line 643
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V

    .line 644
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V

    .line 646
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHoverUIFeatureLevel()I

    move-result v0

    if-ge v0, v3, :cond_0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 647
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setHoverPopupType(I)V

    .line 648
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setLongClickable(Z)V

    .line 681
    :cond_1
    return-void
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 771
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 781
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 782
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCanOpenPopup(Z)V

    .line 783
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 806
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageButton;->onLayout(ZIIII)V

    .line 807
    iget-object v7, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v7}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 811
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 812
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 814
    .local v1, "bounds":Landroid/graphics/Rect;
    sub-int v3, p5, p3

    .line 815
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v7, v3, v7

    div-int/lit8 v6, v7, 0x2

    .line 816
    .local v6, "offset":I
    iget v7, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v6

    .line 817
    .local v4, "hotspotLeft":I
    iget v7, v1, Landroid/graphics/Rect;->right:I

    add-int v5, v7, v6

    .line 818
    .local v5, "hotspotRight":I
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7, v5, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 685
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    :goto_0
    return v1

    .line 689
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V

    .line 690
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 20

    .prologue
    .line 696
    invoke-super/range {p0 .. p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v18 .. v18}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 697
    :cond_0
    const/16 v18, 0x1

    .line 766
    :goto_0
    return v18

    .line 700
    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v13, v0, [I

    .line 701
    .local v13, "screenPos":[I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 702
    .local v6, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getLocationOnScreen([I)V

    .line 703
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 705
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 706
    .local v4, "context":Landroid/content/Context;
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v16

    .line 707
    .local v16, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v7

    .line 708
    .local v7, "height":I
    const/16 v18, 0x1

    aget v18, v13, v18

    div-int/lit8 v19, v7, 0x2

    add-int v9, v18, v19

    .line 709
    .local v9, "midy":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v14, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 710
    .local v14, "screenWidth":I
    const/16 v18, 0x0

    aget v18, v13, v18

    div-int/lit8 v19, v16, 0x2

    add-int v11, v18, v19

    .line 711
    .local v11, "referenceX":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getLayoutDirection()I

    move-result v18

    if-nez v18, :cond_2

    .line 712
    sub-int v11, v14, v11

    .line 715
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v18 .. v18}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 716
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 717
    .local v5, "density":F
    const/high16 v18, 0x40a00000    # 5.0f

    mul-float v18, v18, v5

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v11, v11, v18

    .line 722
    .end local v5    # "density":F
    :cond_3
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v12, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 723
    .local v12, "screenHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050010

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    .line 724
    .local v15, "statusBarHeight":I
    const-string/jumbo v18, "window"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v17

    .line 726
    .local v17, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v18

    if-nez v18, :cond_4

    instance-of v0, v4, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object v0, v4

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    if-eqz v18, :cond_5

    .line 728
    :cond_4
    const/4 v15, 0x0

    .line 734
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static/range {v18 .. v18}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 738
    .local v2, "cheatSheet":Landroid/widget/Toast;
    :goto_2
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 740
    const v18, 0x800035

    sub-int v19, v7, v15

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v11, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 747
    :goto_3
    instance-of v0, v4, Landroid/app/Activity;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 748
    check-cast v4, Landroid/app/Activity;

    .end local v4    # "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v8

    .line 749
    .local v8, "isSplit":Z
    iget v10, v6, Landroid/graphics/Rect;->top:I

    .line 750
    .local v10, "offsetY":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 751
    .local v3, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 752
    if-eqz v8, :cond_6

    sub-int v18, v9, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 753
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v10

    move/from16 v0, v18

    if-ge v9, v0, :cond_9

    .line 755
    const v18, 0x800035

    add-int v19, v7, v10

    sub-int v19, v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v11, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 764
    .end local v3    # "contentFrame":Landroid/graphics/Rect;
    .end local v8    # "isSplit":Z
    .end local v10    # "offsetY":I
    :cond_6
    :goto_4
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 765
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->performHapticFeedback(I)Z

    .line 766
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 737
    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    .restart local v4    # "context":Landroid/content/Context;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .restart local v2    # "cheatSheet":Landroid/widget/Toast;
    goto :goto_2

    .line 743
    :cond_8
    const/16 v18, 0x51

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_3

    .line 758
    .end local v4    # "context":Landroid/content/Context;
    .restart local v3    # "contentFrame":Landroid/graphics/Rect;
    .restart local v8    # "isSplit":Z
    .restart local v10    # "offsetY":I
    :cond_9
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    sub-int v10, v12, v18

    .line 759
    const v18, 0x800055

    add-int v19, v7, v10

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v11, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_4

    .line 730
    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    .end local v3    # "contentFrame":Landroid/graphics/Rect;
    .end local v8    # "isSplit":Z
    .end local v10    # "offsetY":I
    .restart local v4    # "context":Landroid/content/Context;
    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 787
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->setFrame(IIII)Z

    move-result v1

    .line 788
    .local v1, "changed":Z
    iget-object v5, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v5}, Landroid/widget/ActionMenuPresenter;->access$200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v1

    .line 791
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 792
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 793
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 794
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F

    .line 795
    .local v4, "pts":[F
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    int-to-float v5, v5

    aput v5, v4, v7

    .line 796
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 797
    aget v5, v4, v7

    float-to-int v5, v5

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 798
    .local v3, "offset":I
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

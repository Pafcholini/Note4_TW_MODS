.class abstract Landroid/widget/Editor$NewPinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "NewPinnedPopupWindow"
.end annotation


# instance fields
.field protected final ITEM_WIDTH:I

.field protected mContentView:Landroid/view/ViewGroup;

.field protected mDividerWidth:I

.field protected mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field protected mItemWidth:I

.field protected mMenuItemCount:I

.field protected mPopupBgPaddingHeight:I

.field protected mPopupBgPaddingWidth:I

.field protected mPopupWidthLandscape:I

.field protected mPopupWidthPortrait:I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3485
    iput-object p1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3470
    const/16 v0, 0x47

    iput v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->ITEM_WIDTH:I

    .line 3471
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    .line 3472
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    .line 3473
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    .line 3474
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    .line 3475
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingHeight:I

    .line 3476
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    .line 3477
    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    .line 3486
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->createPopupWindow()V

    .line 3488
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 3489
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3490
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3492
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->initContentView()V

    .line 3493
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->setHeight()V

    .line 3494
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3495
    return-void
.end method

.method private computeLocalPosition()V
    .locals 2

    .prologue
    .line 3592
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->measureContent()V

    .line 3593
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 3594
    .local v0, "position":[I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getNewActionPopupPosition([I)V

    .line 3595
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    .line 3596
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    .line 3597
    return-void
.end method

.method private getMenuLimit()I
    .locals 2

    .prologue
    .line 3557
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3558
    const/4 v0, 0x4

    .line 3560
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method private setPopupWindowWidth(I)V
    .locals 4
    .param p1, "menuLimit"    # I

    .prologue
    .line 3565
    iget v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    if-ge v0, p1, :cond_0

    .line 3566
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mDividerWidth:I

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mItemWidth:I

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3574
    :goto_0
    return-void

    .line 3568
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3569
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthPortrait:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0

    .line 3571
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWidthLandscape:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method private updateNewActionPopupPosition()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 3601
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3602
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3607
    :goto_0
    return-void

    .line 3604
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract createPopupWindow()V
.end method

.method protected abstract getNewActionPopupPosition([I)V
.end method

.method protected abstract getTextOffset()I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 3610
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3611
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 3612
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 3626
    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 3577
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3579
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    .line 3585
    return-void
.end method

.method public relocateNewActionPopupWindow(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 3630
    if-ltz p1, :cond_0

    .line 3631
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3632
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getMenuLimit()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Editor$NewPinnedPopupWindow;->setPopupWindowWidth(I)V

    .line 3633
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3635
    :cond_0
    return-void
.end method

.method protected abstract setHeight()V
.end method

.method public show()V
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 3499
    const/4 v6, 0x1

    .line 3500
    .local v6, "menuItemCount":I
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canCut()Z

    move-result v2

    .line 3501
    .local v2, "canCut":Z
    if-eqz v2, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 3502
    :cond_0
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canCopy()Z

    move-result v1

    .line 3503
    .local v1, "canCopy":Z
    if-eqz v1, :cond_1

    add-int/lit8 v6, v6, 0x1

    .line 3504
    :cond_1
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    .line 3505
    .local v4, "canPaste":Z
    if-eqz v4, :cond_2

    add-int/lit8 v6, v6, 0x1

    .line 3506
    :cond_2
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v11}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    instance-of v11, v11, Landroid/text/Editable;

    if-eqz v11, :cond_9

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v11

    if-lez v11, :cond_9

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v11, :cond_9

    move v0, v5

    .line 3509
    .local v0, "canClipboard":Z
    :goto_0
    if-eqz v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 3510
    :cond_3
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->canTranslate()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v11, :cond_a

    .line 3511
    .local v5, "canTranslate":Z
    :goto_1
    if-eqz v5, :cond_4

    add-int/lit8 v6, v6, 0x1

    .line 3512
    :cond_4
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v11, :cond_5

    add-int/lit8 v6, v6, 0x1

    .line 3513
    :cond_5
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v11, v11, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v11, :cond_6

    add-int/lit8 v6, v6, 0x1

    .line 3514
    :cond_6
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v11}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v3

    .line 3515
    .local v3, "canDictionary":Z
    if-eqz v3, :cond_7

    add-int/lit8 v6, v6, 0x1

    .line 3516
    :cond_7
    iput v6, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mMenuItemCount:I

    .line 3518
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3520
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getMenuLimit()I

    move-result v8

    .line 3521
    .local v8, "menuLimit":I
    invoke-direct {p0, v8}, Landroid/widget/Editor$NewPinnedPopupWindow;->setPopupWindowWidth(I)V

    .line 3523
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->update()V

    .line 3524
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v12, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    iget v13, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionX:I

    iget v14, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mPositionY:I

    invoke-virtual {v11, v12, v10, v13, v14}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3526
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v11}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v11

    invoke-virtual {v11, p0, v10}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 3528
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3530
    if-le v6, v8, :cond_8

    .line 3531
    sub-int v7, v6, v8

    .line 3533
    .local v7, "menuItemDiff":I
    iget-object v11, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v12, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit8 v13, v7, 0x64

    int-to-float v13, v13

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-virtual {v11, v12, v10}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 3534
    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Landroid/widget/Editor$NewPinnedPopupWindow$1;

    invoke-direct {v10, p0, v7}, Landroid/widget/Editor$NewPinnedPopupWindow$1;-><init>(Landroid/widget/Editor$NewPinnedPopupWindow;I)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3552
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 3554
    .end local v7    # "menuItemDiff":I
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_8
    return-void

    .end local v0    # "canClipboard":Z
    .end local v3    # "canDictionary":Z
    .end local v5    # "canTranslate":Z
    .end local v8    # "menuLimit":I
    :cond_9
    move v0, v10

    .line 3506
    goto/16 :goto_0

    .restart local v0    # "canClipboard":Z
    :cond_a
    move v5, v10

    .line 3510
    goto :goto_1
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 3617
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$NewPinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1800(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3618
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->computeLocalPosition()V

    .line 3619
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->updateNewActionPopupPosition()V

    .line 3623
    :goto_0
    return-void

    .line 3621
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$NewPinnedPopupWindow;->hide()V

    goto :goto_0
.end method

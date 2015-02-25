.class abstract Landroid/widget/Editor$HandleView;
.super Landroid/view/View;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field protected static final DELAY_BEFORE_HANDLE_FADES_OUT:I = 0xfa0

.field static final HANDLE_TYPE_END:I = 0x2

.field static final HANDLE_TYPE_INSERT:I = 0x3

.field static final HANDLE_TYPE_NONE:I = 0x0

.field static final HANDLE_TYPE_START:I = 0x1

.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mCurCursorPosTop:Z

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field public mHandleType:I

.field protected mHorizontalGravity:I

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mInitPositionX:I

.field private mInitPositionY:I

.field private mInitRawY:F

.field protected mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mMinSize:I

.field private mNewActionPopupHider:Ljava/lang/Runnable;

.field private mNewActionPopupShower:Ljava/lang/Runnable;

.field protected mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

.field private mNumberPreviousOffsets:I

.field protected mPositionHasChanged:Z

.field protected mPositionX:I

.field protected mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field protected mbFlipCursor:Z

.field protected mbSwitchCursor:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4333
    iput-object p1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    .line 4334
    invoke-static {p1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4315
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4317
    iput-boolean v6, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4328
    iput v5, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    .line 4377
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    .line 4378
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    .line 4379
    iput v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4380
    iput v5, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4839
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mbFlipCursor:Z

    .line 4840
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mCurCursorPosTop:Z

    .line 4335
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-static {p1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 4337
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 4338
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 4339
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 4340
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4342
    iput-object p2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 4343
    iput-object p3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 4348
    iput v5, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    .line 4349
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4352
    invoke-static {p1}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4353
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    .line 4360
    :goto_0
    return-void

    .line 4355
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v0

    .line 4356
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4357
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    goto :goto_0
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 4388
    iget v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4389
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 4390
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 4391
    iget v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4392
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 10

    .prologue
    .line 4395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4396
    .local v4, "now":J
    const/4 v0, 0x0

    .line 4397
    .local v0, "i":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    .line 4398
    .local v2, "index":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4399
    .local v1, "iMax":I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x96

    cmp-long v3, v6, v8

    if-gez v3, :cond_0

    .line 4400
    add-int/lit8 v0, v0, 0x1

    .line 4401
    iget v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x5

    rem-int/lit8 v2, v3, 0x5

    goto :goto_0

    .line 4404
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v6, v3, v2

    sub-long v6, v4, v6

    const-wide/16 v8, 0x15e

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 4406
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mPreviousOffsets:[I

    aget v3, v3, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4408
    :cond_1
    return-void
.end method

.method private getHorizontalOffset()I
    .locals 4

    .prologue
    .line 4650
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v2

    .line 4651
    .local v2, "width":I
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4653
    .local v0, "drawWidth":I
    iget v3, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    packed-switch v3, :pswitch_data_0

    .line 4659
    :pswitch_0
    sub-int v3, v2, v0

    div-int/lit8 v1, v3, 0x2

    .line 4665
    .local v1, "left":I
    :goto_0
    return v1

    .line 4655
    .end local v1    # "left":I
    :pswitch_1
    const/4 v1, 0x0

    .line 4656
    .restart local v1    # "left":I
    goto :goto_0

    .line 4662
    .end local v1    # "left":I
    :pswitch_2
    sub-int v1, v2, v0

    .restart local v1    # "left":I
    goto :goto_0

    .line 4653
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getPreferredHeight()I
    .locals 2

    .prologue
    .line 4424
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 4420
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$HandleView;->mMinSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 4534
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 4535
    const/4 v0, 0x1

    .line 4542
    :goto_0
    return v0

    .line 4538
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4539
    const/4 v0, 0x0

    goto :goto_0

    .line 4542
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget v1, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Landroid/widget/Editor;->access$3300(Landroid/widget/Editor;FF)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 4383
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    .line 4384
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4385
    return-void
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4826
    const/4 v0, 0x1

    return v0
.end method

.method protected dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4440
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4441
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4442
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4444
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onDetached()V

    .line 4445
    iput-boolean v1, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .line 4446
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected getCursorOffset()I
    .locals 1

    .prologue
    .line 4669
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getHorizontalGravity(Z)I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 4449
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 4451
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 4452
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 4471
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4472
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4474
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 4475
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$ActionPopupWindow;->hide()V

    .line 4477
    :cond_1
    return-void
.end method

.method hideNewActionPopupWindow()V
    .locals 1

    .prologue
    .line 4516
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v0, :cond_0

    .line 4517
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    .line 4519
    :cond_0
    return-void
.end method

.method hideNewActionPopupWindowAfterDelay()V
    .locals 4

    .prologue
    .line 4502
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 4503
    new-instance v0, Landroid/widget/Editor$HandleView$2;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$2;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    .line 4511
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4513
    return-void

    .line 4509
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->removeNewActionPopupHiderCallback()V

    goto :goto_0
.end method

.method public initPreviousOffset()V
    .locals 1

    .prologue
    .line 4835
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4836
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 4806
    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 4529
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4411
    iget v1, p0, Landroid/widget/Editor$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 4817
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4819
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    .line 4821
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 4642
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 4643
    .local v0, "drawWidth":I
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v1

    .line 4645
    .local v1, "left":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v1, v0

    iget-object v5, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4646
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4647
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 4810
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    .line 4812
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideNewActionPopupWindow()V

    .line 4814
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 4416
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getPreferredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->setMeasuredDimension(II)V

    .line 4417
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4680
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 4802
    :cond_0
    :goto_0
    const/4 v12, 0x1

    return v12

    .line 4682
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    invoke-direct {p0, v12}, Landroid/widget/Editor$HandleView;->startTouchUpFilter(I)V

    .line 4684
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4685
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4688
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4689
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4690
    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    .line 4691
    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    .line 4692
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    .line 4695
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v4

    .line 4696
    .local v4, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4697
    invoke-virtual {v4}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v12

    iput v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4698
    const/4 v12, 0x1

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 4704
    .end local v4    # "positionListener":Landroid/widget/Editor$PositionListener;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    .line 4705
    .local v8, "rawX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    .line 4707
    .local v9, "rawY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v8

    .line 4708
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v9

    .line 4712
    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v13, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    sub-float v7, v12, v13

    .line 4713
    .local v7, "previousVerticalOffset":F
    iget v12, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    int-to-float v12, v12

    sub-float v12, v9, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v13, v13

    sub-float v0, v12, v13

    .line 4715
    .local v0, "currentVerticalOffset":F
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3

    .line 4716
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 4717
    .local v3, "newVerticalOffset":F
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4727
    :goto_1
    iget v12, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    int-to-float v12, v12

    add-float/2addr v12, v3

    iput v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4732
    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    sub-float v12, v8, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v13, v13

    add-float v1, v12, v13

    .line 4733
    .local v1, "newPosX":F
    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    sub-float v12, v9, v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v12, v13

    .line 4735
    .local v2, "newPosY":F
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v10

    .line 4736
    .local v10, "scaleRatio":Landroid/graphics/PointF;
    iget v12, v10, Landroid/graphics/PointF;->x:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_1

    .line 4737
    iget v12, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v13, v13

    add-float v11, v12, v13

    .line 4738
    .local v11, "tempX":F
    sub-float v12, v8, v11

    iget v13, v10, Landroid/graphics/PointF;->x:F

    div-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionX:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v13, v13

    add-float v1, v12, v13

    .line 4740
    .end local v11    # "tempX":F
    :cond_1
    iget v12, v10, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_2

    .line 4741
    iget v12, p0, Landroid/widget/Editor$HandleView;->mInitRawY:F

    sub-float v12, v9, v12

    iget v13, v10, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mInitPositionY:I

    int-to-float v13, v13

    add-float/2addr v12, v13

    iget v13, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    add-float v2, v12, v13

    .line 4745
    :cond_2
    invoke-virtual {p0, v1, v2}, Landroid/widget/Editor$HandleView;->updatePosition(FF)V

    goto/16 :goto_0

    .line 4719
    .end local v1    # "newPosX":F
    .end local v2    # "newPosY":F
    .end local v3    # "newVerticalOffset":F
    .end local v10    # "scaleRatio":Landroid/graphics/PointF;
    :cond_3
    cmpg-float v12, v0, v7

    if-gez v12, :cond_4

    .line 4720
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4721
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_1

    .line 4724
    .end local v3    # "newVerticalOffset":F
    :cond_4
    iget v12, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 4725
    .restart local v3    # "newVerticalOffset":F
    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 4750
    .end local v0    # "currentVerticalOffset":F
    .end local v3    # "newVerticalOffset":F
    .end local v7    # "previousVerticalOffset":F
    .end local v8    # "rawX":F
    .end local v9    # "rawY":F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->filterOnTouchUp()V

    .line 4751
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    .line 4754
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 4755
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->refreshForSwitchingCursor()Z

    .line 4757
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v12

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    if-le v12, v13, :cond_5

    .line 4758
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Landroid/text/Spannable;

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v13

    iget-object v14, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v14}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v14

    invoke-static {v12, v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4763
    :cond_5
    iget v12, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 4764
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    .line 4765
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->recalHandleView()V

    .line 4767
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4769
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v5, v12, v13

    .line 4771
    .local v5, "positionX":I
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v12

    iget v13, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v6, v12, v13

    .line 4773
    .local v6, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 4774
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-virtual {v12, v5, v6, v13, v14}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4784
    .end local v5    # "positionX":I
    .end local v6    # "positionY":I
    :cond_6
    :goto_2
    iget v12, p0, Landroid/widget/Editor$HandleView;->mHandleType:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v12}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 4785
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-eqz v12, :cond_0

    .line 4786
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v12}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 4787
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v12}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 4788
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v12}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Editor$SelectionModifierCursorController;->hideAllNewActionPopup()V

    goto/16 :goto_0

    .line 4776
    .restart local v5    # "positionX":I
    .restart local v6    # "positionY":I
    :cond_7
    iget-object v12, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v13, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v13}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v5, v6}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 4791
    .end local v5    # "positionX":I
    .end local v6    # "positionY":I
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Landroid/widget/Editor$HandleView;->showNewActionPopupWindow(I)V

    goto/16 :goto_0

    .line 4799
    :pswitch_3
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 4680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 7
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4554
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 4555
    .local v1, "layout":Landroid/text/Layout;
    if-nez v1, :cond_1

    .line 4557
    iget-object v4, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->prepareCursorControllers()V

    .line 4587
    :cond_0
    :goto_0
    return-void

    .line 4561
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4562
    .local v0, "hintLayout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4565
    move-object v1, v0

    .line 4568
    :cond_2
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    if-eq p1, v5, :cond_5

    move v3, v4

    .line 4569
    .local v3, "offsetChanged":Z
    :goto_1
    if-nez v3, :cond_3

    if-eqz p2, :cond_0

    .line 4570
    :cond_3
    if-eqz v3, :cond_4

    .line 4571
    invoke-virtual {p0, p1}, Landroid/widget/Editor$HandleView;->updateSelection(I)V

    .line 4572
    invoke-direct {p0, p1}, Landroid/widget/Editor$HandleView;->addPositionToTouchUpFilter(I)V

    .line 4574
    :cond_4
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 4576
    .local v2, "line":I
    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    sub-float/2addr v5, v6

    iget v6, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->getHorizontalOffset()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCursorOffset()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4578
    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4581
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .line 4582
    iget v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    iget-object v6, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    .line 4584
    iput p1, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4585
    iput-boolean v4, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    goto :goto_0

    .line 4568
    .end local v2    # "line":I
    .end local v3    # "offsetChanged":Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public recalHandleView()V
    .locals 3

    .prologue
    .line 4843
    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 4844
    .local v0, "handleHeight":I
    const v1, -0x41666666    # -0.3f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mTouchOffsetY:F

    .line 4845
    const v1, 0x3f333333    # 0.7f

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$HandleView;->mIdealVerticalOffset:F

    .line 4847
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 1

    .prologue
    .line 4829
    const/4 v0, 0x1

    return v0
.end method

.method removeNewActionPopupHiderCallback()V
    .locals 2

    .prologue
    .line 4522
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4523
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupHider:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4525
    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 4428
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4437
    :goto_0
    return-void

    .line 4430
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1700(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 4433
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/Editor$HandleView;->mPreviousOffset:I

    .line 4434
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4436
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    .line 4455
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 4456
    new-instance v0, Landroid/widget/Editor$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$ActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    .line 4458
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 4459
    new-instance v0, Landroid/widget/Editor$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$HandleView$1;-><init>(Landroid/widget/Editor$HandleView;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 4467
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4468
    return-void

    .line 4465
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method showNewActionPopupWindow(I)V
    .locals 3
    .param p1, "delay"    # I

    .prologue
    .line 4481
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    if-nez v0, :cond_0

    .line 4482
    new-instance v0, Landroid/widget/Editor$NewActionPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$NewActionPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    .line 4484
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mNewActionPopupWindow:Landroid/widget/Editor$NewActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$NewActionPopupWindow;->show()V

    .line 4499
    return-void
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 4363
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 4364
    .local v1, "offset":I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 4365
    .local v0, "isRtlCharAtOffset":Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 4366
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/Editor$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    .line 4367
    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->getHorizontalGravity(Z)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$HandleView;->mHorizontalGravity:I

    .line 4368
    return-void

    .line 4365
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4591
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4592
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 4593
    :cond_0
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 4595
    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 4596
    :cond_1
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetX:F

    .line 4597
    iget v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$HandleView;->mTouchToWindowOffsetY:F

    .line 4598
    iput p1, p0, Landroid/widget/Editor$HandleView;->mLastParentX:I

    .line 4599
    iput p2, p0, Landroid/widget/Editor$HandleView;->mLastParentY:I

    .line 4602
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->onHandleMoved()V

    .line 4604
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4605
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4606
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->removeAllNewActionPopupHider()V

    .line 4612
    :cond_3
    invoke-direct {p0}, Landroid/widget/Editor$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4613
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 4616
    .local v0, "positionX":I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 4618
    .local v1, "positionY":I
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4619
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 4631
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    .line 4633
    iget-boolean v2, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    iget-boolean v2, v2, Landroid/widget/Editor;->mNewSelectionActionMode:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4634
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->relocateNewActionPopupWindow()V

    .line 4638
    :cond_5
    return-void

    .line 4621
    .restart local v0    # "positionX":I
    .restart local v1    # "positionY":I
    :cond_6
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 4625
    .end local v0    # "positionX":I
    .end local v1    # "positionY":I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4626
    invoke-virtual {p0}, Landroid/widget/Editor$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method

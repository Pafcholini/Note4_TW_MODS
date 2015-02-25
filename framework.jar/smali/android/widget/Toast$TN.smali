.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 515
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 485
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 492
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 501
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 502
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 518
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 519
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 520
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 521
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 522
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 523
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 524
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 526
    const v1, 0x40088

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 530
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 590
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 592
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 603
    :goto_0
    return-void

    .line 597
    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 599
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 602
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 616
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 618
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 553
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v4, v5, :cond_4

    .line 555
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 556
    iget-object v4, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 557
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 558
    .local v1, "context":Landroid/content/Context;
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .line 559
    .local v3, "packageName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 560
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 562
    :cond_0
    const-string/jumbo v4, "window"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 565
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 566
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 567
    .local v2, "gravity":I
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 568
    and-int/lit8 v4, v2, 0x7

    const/4 v5, 0x7

    if-ne v4, v5, :cond_1

    .line 569
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 571
    :cond_1
    and-int/lit8 v4, v2, 0x70

    const/16 v5, 0x70

    if-ne v4, v5, :cond_2

    .line 572
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 574
    :cond_2
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Landroid/widget/Toast$TN;->mX:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 575
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Landroid/widget/Toast$TN;->mY:I

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 576
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 577
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 578
    iget-object v4, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 579
    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 581
    iget-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v4, v5}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 584
    :cond_3
    iget-object v4, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v6, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 585
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .line 587
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "gravity":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    return-void
.end method

.method public setShowForAllUsers()V
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 622
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 539
    return-void
.end method

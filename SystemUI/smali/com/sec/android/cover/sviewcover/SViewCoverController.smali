.class public Lcom/sec/android/cover/sviewcover/SViewCoverController;
.super Lcom/sec/android/cover/BaseCoverController;
.source "SViewCoverController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

.field private mRootView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/cover/BaseCoverController;-><init>(Landroid/content/Context;)V

    .line 21
    iput-object p2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 22
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string v1, "SViewCoverController instance created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method


# virtual methods
.method public onCoverAttached(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverAttached(Lcom/samsung/android/cover/CoverState;)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mContext:Landroid/content/Context;

    sget v1, Lcom/sec/android/sviewcover/R$layout;->s_view_cover_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/sviewcover/SViewCoverView;

    iput-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 31
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 33
    sget-object v0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->TAG:Ljava/lang/String;

    const-string v1, "SViewCoverView added at rootview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 39
    :cond_1
    return-void
.end method

.method public onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverDetatched(Lcom/samsung/android/cover/CoverState;)V

    .line 45
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 53
    :cond_1
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    .line 54
    iput-object v2, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mRootView:Landroid/widget/FrameLayout;

    .line 55
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 1
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/sec/android/cover/BaseCoverController;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverController;->mCoverMainView:Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/CoverMainFrameView;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    .line 64
    :cond_0
    return-void
.end method

.class public final Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.super Ljava/lang/Object;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$1;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;,
        Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$States;
    }
.end annotation


# static fields
.field public static final COCKTAIL_CATEGORY_CONTEXTUAL:I = 0x10000

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_CALLING:I = 0x10002

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_COMMAND:I = 0x10007

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_HEADSET:I = 0x10005

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_INCOMING_CALL:I = 0x10001

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_NOTIFICATION:I = 0x10004

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_SPEN:I = 0x10006

.field public static final COCKTAIL_CATEGORY_CONTEXTUAL_TICKER:I = 0x10003

.field public static final COCKTAIL_CATEGORY_GLOBAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_ALL:I = 0x9f

.field public static final COCKTAIL_DISPLAY_POLICY_GENERAL:I = 0x1

.field public static final COCKTAIL_DISPLAY_POLICY_INDEX_MODE:I = 0x10

.field public static final COCKTAIL_DISPLAY_POLICY_LOCKSCREEN:I = 0x2

.field public static final COCKTAIL_DISPLAY_POLICY_NOT_PROVISION:I = 0x80

.field public static final COCKTAIL_DISPLAY_POLICY_SCOVER:I = 0x4

.field public static final COCKTAIL_DISPLAY_POLICY_TABLE_MODE:I = 0x8

.field public static final COCKTAIL_VISIBILITY_HIDE:I = 0x2

.field public static final COCKTAIL_VISIBILITY_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlookCocktailManager"

.field static sManagerCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

.field private mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;

.field private mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v0}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    .line 341
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    .line 344
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 318
    sget-object v4, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    monitor-enter v4

    .line 319
    if-nez p0, :cond_0

    .line 320
    :try_start_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 337
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 322
    :cond_0
    :try_start_1
    instance-of v3, p0, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    .line 323
    move-object v0, p0

    check-cast v0, Landroid/content/ContextWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 324
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "Base context is null."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 327
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 328
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;>;"
    const/4 v2, 0x0

    .line 329
    .local v2, "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    if-eqz v1, :cond_2

    .line 330
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    check-cast v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    .line 332
    .restart local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    :cond_2
    if-nez v2, :cond_3

    .line 333
    new-instance v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    .end local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    invoke-direct {v2, p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;-><init>(Landroid/content/Context;)V

    .line 334
    .restart local v2    # "result":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
    sget-object v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->sManagerCache:Ljava/util/WeakHashMap;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, p0, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method


# virtual methods
.method public closeCocktail(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "category"    # I

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->closeCocktail(II)V

    .line 426
    :cond_0
    return-void
.end method

.method public getCocktailIds(Landroid/content/ComponentName;)[I
    .locals 2
    .param p1, "provider"    # Landroid/content/ComponentName;

    .prologue
    .line 448
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 451
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    goto :goto_0
.end method

.method public notifyCocktailViewDataChanged(II)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "viewId"    # I

    .prologue
    .line 436
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->notifyCocktailViewDataChanged(II)V

    .line 439
    :cond_0
    return-void
.end method

.method public partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "cocktailId"    # I
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    if-nez p2, :cond_0

    .line 397
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentView is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->partiallyUpdateCocktail(ILandroid/widget/RemoteViews;)V

    .line 401
    :cond_1
    return-void
.end method

.method public setCocktailBarStatus(ZZ)V
    .locals 2
    .param p1, "shift"    # Z
    .param p2, "transparent"    # Z

    .prologue
    .line 472
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->setCocktailBarStatus(ZZ)V

    .line 475
    :cond_0
    return-void
.end method

.method public setLongPressEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateLongpressGesture(Z)V

    .line 463
    :cond_0
    return-void
.end method

.method public setOnFeedUpdatedListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;

    .prologue
    .line 593
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    if-eqz p1, :cond_2

    .line 595
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    if-nez v0, :cond_1

    .line 596
    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;-><init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    .line 597
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->registerOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;->setOnFeedsUpdatedListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnFeedUpdatedListener;)V

    goto :goto_0

    .line 602
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->unregisterOnFeedsUpdatedListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarFeedsListener;)V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mFeedsUpdatedListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsListenerWrapper;

    goto :goto_0
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    if-eqz p1, :cond_2

    .line 510
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    if-nez v0, :cond_1

    .line 511
    new-instance v0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;-><init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    .line 512
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->registerListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->setOnStateChangeListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->unregisterListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;)V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mStateChangeListenerWrapper:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;

    goto :goto_0
.end method

.method public showCocktail(I)V
    .locals 2
    .param p1, "cocktailId"    # I

    .prologue
    .line 410
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->showCocktail(I)V

    .line 413
    :cond_0
    return-void
.end method

.method public updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V
    .locals 6
    .param p1, "cocktailId"    # I
    .param p2, "info"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    if-nez p2, :cond_0

    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CocktailInfo is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mDisplayPolicy:I
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$100(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v2

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mCategory:I
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$200(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)I

    move-result v3

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentView:Landroid/widget/RemoteViews;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$300(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/widget/RemoteViews;

    move-result-object v4

    # getter for: Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->mContentInfo:Landroid/os/Bundle;
    invoke-static {p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;->access$400(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)Landroid/os/Bundle;

    move-result-object v5

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateCocktail(IIILandroid/widget/RemoteViews;Landroid/os/Bundle;)V

    .line 369
    :cond_1
    return-void
.end method

.method public updateFeeds(ILjava/util/List;)V
    .locals 7
    .param p1, "cocktailId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 489
    .local p2, "feedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;>;"
    iget-object v4, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "cFeedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;

    .line 492
    .local v2, "fi":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;
    new-instance v4, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;

    iget-object v5, v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->feedsText:Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v6}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    iget v5, v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->icon:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;->setIcon(I)Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;

    move-result-object v4

    iget-object v5, v2, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/cocktailbar/FeedsInfo$Builder;->build()Lcom/samsung/android/cocktailbar/FeedsInfo;

    move-result-object v1

    .line 495
    .local v1, "cfeedsInfo":Lcom/samsung/android/cocktailbar/FeedsInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    .end local v1    # "cfeedsInfo":Lcom/samsung/android/cocktailbar/FeedsInfo;
    .end local v2    # "fi":Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$FeedsInfo;
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->mCocktailBarManager:Lcom/samsung/android/cocktailbar/CocktailBarManager;

    invoke-virtual {v4, p1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->updateFeeds(ILjava/util/List;)V

    .line 499
    .end local v0    # "cFeedsInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

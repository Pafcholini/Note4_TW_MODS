.class public final Lcom/samsung/android/multiwindow/MultiWindowFacade;
.super Ljava/lang/Object;
.source "MultiWindowFacade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowFacade$TaskInfo;
    }
.end annotation


# static fields
.field public static final ARRANGE_SPLITED:I = 0x1

.field public static final ARRANGE_SPLITED3L:I = 0x2

.field public static final ARRANGE_SPLITED3R:I = 0x4

.field public static final ARRANGE_SPLITED4:I = 0x8

.field public static final ARRANGE_UNKNOWN:I = 0x0

.field public static final GET_TASK_ALLSTATE:I = 0x0

.field public static final GET_TASK_CURRENT_USER_ONLY:I = 0x2

.field public static final GET_TASK_EXCLUDE_MOVETASKTOBACK:I = 0x4

.field public static final GET_TASK_RESUMED_ONLY:I = 0x1

.field public static final MULTIWINDOW_ABSOLUTE_TOPACTIVITY:I = 0x2

.field public static final MULTIWINDOW_EXCLUDED_CASCADE_TYPE:I = 0x1

.field public static final SPLIT_MAX_WEIGHT:F = 0.8f

.field public static final SPLIT_MIN_WEIGHT:F = 0.2f

.field public static TASK_CONTROLLER_TYPE_RECENT:I

.field public static TASK_CONTROLLER_TYPE_RUNNING:I


# instance fields
.field private mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RUNNING:I

    .line 600
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/multiwindow/IMultiWindowFacade;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 40
    return-void
.end method


# virtual methods
.method public addTab(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 457
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->addTab(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public appMinimizingStarted(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->appMinimizingStarted(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;
    .param p2, "zone"    # I
    .param p3, "bMinimize"    # Z

    .prologue
    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeTaskToCascade(Landroid/graphics/Point;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 336
    :goto_0
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 336
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeTaskToFull(I)V
    .locals 2
    .param p1, "zone"    # I

    .prologue
    .line 321
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeTaskToFull(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 2
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->exchangeTopTaskToZone(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 175
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 175
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArrangeState()I
    .locals 2

    .prologue
    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getArrangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 219
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 219
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 2

    .prologue
    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getAvailableMultiInstanceCnt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 344
    :goto_0
    return v1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 344
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCenterBarPoint(I)Landroid/graphics/Point;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getCenterBarPoint(I)Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 72
    :goto_0
    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentOrientation()I
    .locals 2

    .prologue
    .line 583
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getCurrentOrientation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 589
    :goto_0
    return v1

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 589
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getEnabledFeaturesFlags()J
    .locals 4

    .prologue
    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getEnabledFeaturesFlags()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 677
    :goto_0
    return-wide v2

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 677
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getExpectedOrientation()I
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getExpectedOrientation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 141
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFocusedStackLayer()I
    .locals 2

    .prologue
    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedStackLayer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 231
    :goto_0
    return v1

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 231
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFocusedZone()I
    .locals 2

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedZone()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 243
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 163
    :goto_0
    return-object v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 163
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 2

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getGlobalSystemUiVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 312
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 312
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRecentTaskSize(II)I
    .locals 2
    .param p1, "userId"    # I
    .param p2, "maxCount"    # I

    .prologue
    .line 559
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRecentTaskSize(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 563
    :goto_0
    return v1

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 563
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRunningScaleWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRunningScaleWindows()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 574
    :goto_0
    return-object v1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 574
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRunningTasks(II)Ljava/util/List;
    .locals 2
    .param p1, "maxNum"    # I
    .param p2, "flag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getRunningTasks(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSplitMaxWeight()F
    .locals 2

    .prologue
    .line 410
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMaxWeight()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 413
    :goto_0
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 413
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSplitMinWeight()F
    .locals 2

    .prologue
    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMinWeight()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 401
    :goto_0
    return v1

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 401
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    :goto_0
    return-object v1

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 117
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackId(Landroid/os/IBinder;)I
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 514
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    :goto_0
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 517
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 129
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 129
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 434
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 438
    :goto_0
    return-object v1

    .line 435
    :catch_0
    move-exception v0

    .line 436
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 438
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTabs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/multiwindow/MultiWindowTab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getTabs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 494
    :goto_0
    return-object v1

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 494
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "zone"    # I

    .prologue
    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getZoneBounds(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 255
    :goto_0
    return-object v1

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnableMakePenWindow()Z
    .locals 2

    .prologue
    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->isEnableMakePenWindow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 426
    :goto_0
    return v1

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 426
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "flags"    # I
    .param p4, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    .line 378
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public needToExposureTitleBarMenu()Z
    .locals 2

    .prologue
    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->needToExposureTitleBarMenu()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 301
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 301
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 2
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->registerTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 2
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p2, "type"    # I

    .prologue
    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->registerTaskControllerWithType(Lcom/samsung/android/multiwindow/ITaskController;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAllTasks(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    .line 480
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->removeAllTasks(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :goto_0
    return-void

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeTab(I)Z
    .locals 2
    .param p1, "stackId"    # I

    .prologue
    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->removeTab(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 471
    :goto_0
    return v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 471
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestSplitPreview(Z)V
    .locals 2
    .param p1, "enablePreview"    # Z

    .prologue
    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->requestSplitPreview(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAppVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "visible"    # Z

    .prologue
    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setAppVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCenterBarPoint(ILandroid/graphics/Point;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "point"    # Landroid/graphics/Point;

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFocusAppByZone(I)V
    .locals 2
    .param p1, "zone"    # I

    .prologue
    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusAppByZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setFocusedStack(IZ)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "tapOutSide"    # Z

    .prologue
    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusedStack(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :goto_0
    return-void

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-nez v1, :cond_0

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowTrayOpenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewFullAppZone(I)V
    .locals 2
    .param p1, "zone"    # I

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setPreviewFullAppZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStackBoundByStackId(ILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "stackId"    # I
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBoundByStackId(ILandroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->startActivityFromRecentMultiWindow(ILandroid/os/Bundle;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :goto_0
    return-void

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 2
    .param p1, "taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateMinimizeSize(Landroid/os/IBinder;[I)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "size"    # [I

    .prologue
    .line 446
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateMinimizeSize(Landroid/os/IBinder;[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSettingThroughSystemProcess(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateSettingThroughSystemProcess(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.class public Lcom/samsung/location/SLocationManager;
.super Ljava/lang/Object;
.source "SLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;,
        Lcom/samsung/location/SLocationManager$LocListenerTransport;
    }
.end annotation


# static fields
.field public static final ACTION_SERVICE_READY:Ljava/lang/String; = "com.samsung.location.SERVICE_READY"

.field public static final CURRENT_LOCATION:Ljava/lang/String; = "currentlocation"

.field public static final ERROR_ALREADY_STARTED:I = -0x5

.field public static final ERROR_EXCEPTION:I = -0x4

.field public static final ERROR_ID_NOT_EXIST:I = -0x3

.field public static final ERROR_ILLEGAL_ARGUMENT:I = -0x2

.field public static final ERROR_LOCATION_CURRENTLY_UNAVAILABLE:I = -0x64

.field public static final ERROR_NOT_INITIALIZED:I = -0x1

.field public static final ERROR_TOO_MANY_GEOFENCE:I = -0x6

.field public static final GEOFENCE_ENTER:I = 0x1

.field public static final GEOFENCE_EXIT:I = 0x2

.field public static final GEOFENCE_LOCATION:Ljava/lang/String; = "location"

.field public static final GEOFENCE_TRANSITION:Ljava/lang/String; = "transition"

.field public static final GEOFENCE_TYPE_BT:I = 0x3

.field public static final GEOFENCE_TYPE_GEOPOINT:I = 0x1

.field public static final GEOFENCE_TYPE_WIFI:I = 0x2

.field public static final GEOFENCE_UNKNOWN:I = 0x0

.field public static final OPERATION_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SLocationManager"


# instance fields
.field private mCurrentLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SCurrentLocListener;",
            "Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mLocListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/location/SLocationListener;",
            "Lcom/samsung/location/SLocationManager$LocListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/samsung/location/ISLocationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/location/ISLocationManager;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/location/ISLocationManager;

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    .line 244
    iput-object p1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    .line 245
    return-void
.end method

.method private isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z
    .locals 14
    .param p1, "parameter"    # Lcom/samsung/location/SLocationParameter;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 419
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v6

    .line 420
    .local v6, "type":I
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v9

    if-eq v9, v8, :cond_0

    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v9

    if-eq v9, v12, :cond_0

    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v9

    if-eq v9, v13, :cond_0

    .line 421
    const-string v8, "SLocationManager"

    const-string v9, "geofenceType is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :goto_0
    return v7

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v9

    if-ne v9, v8, :cond_6

    .line 425
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getLatitude()D

    move-result-wide v2

    .line 426
    .local v2, "latitude":D
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getLongitude()D

    move-result-wide v4

    .line 427
    .local v4, "longitude":D
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getRadius()I

    move-result v1

    .line 428
    .local v1, "radius":I
    const-wide v10, -0x3fa9800000000000L    # -90.0

    cmpg-double v9, v2, v10

    if-ltz v9, :cond_1

    const-wide v10, 0x4056800000000000L    # 90.0

    cmpl-double v9, v2, v10

    if-lez v9, :cond_2

    .line 429
    :cond_1
    const-string v8, "SLocationManager"

    const-string/jumbo v9, "latitude is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    :cond_2
    const-wide v10, -0x3f99800000000000L    # -180.0

    cmpg-double v9, v4, v10

    if-ltz v9, :cond_3

    const-wide v10, 0x4066800000000000L    # 180.0

    cmpl-double v9, v4, v10

    if-lez v9, :cond_4

    .line 433
    :cond_3
    const-string v8, "SLocationManager"

    const-string/jumbo v9, "longitude is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_4
    const/16 v9, 0x64

    if-lt v1, v9, :cond_5

    const/16 v9, 0x1f4

    if-le v1, v9, :cond_6

    .line 437
    :cond_5
    const-string v8, "SLocationManager"

    const-string/jumbo v9, "radius is not correct"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    .end local v1    # "radius":I
    .end local v2    # "latitude":D
    .end local v4    # "longitude":D
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v9

    if-eq v9, v12, :cond_7

    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getType()I

    move-result v9

    if-ne v9, v13, :cond_8

    .line 442
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/location/SLocationParameter;->getBssid()Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "bssid":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 444
    const-string v8, "SLocationManager"

    const-string v9, "bssid is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "bssid":Ljava/lang/String;
    :cond_8
    move v7, v8

    .line 448
    goto :goto_0
.end method


# virtual methods
.method public addGeofence(Lcom/samsung/location/SLocationParameter;)I
    .locals 4
    .param p1, "parameter"    # Lcom/samsung/location/SLocationParameter;

    .prologue
    .line 286
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 287
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v1, -0x1

    .line 297
    :goto_0
    return v1

    .line 290
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/location/SLocationManager;->isArgumentsValid(Lcom/samsung/location/SLocationParameter;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    const/4 v1, -0x2

    goto :goto_0

    .line 294
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->addGeofence(Lcom/samsung/location/SLocationParameter;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeofenceId : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public checkPassiveLocation()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 738
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 739
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :goto_0
    return v1

    .line 743
    :cond_0
    :try_start_0
    const-string v2, "SLocationManager"

    const-string v3, "checkPassiveLocation"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2}, Lcom/samsung/location/ISLocationManager;->checkPassiveLocation()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPassiveLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeCurrentLocation(ILcom/samsung/location/SCurrentLocListener;)I
    .locals 7
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SCurrentLocListener;

    .prologue
    const/4 v2, -0x4

    .line 708
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 709
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 v2, -0x1

    .line 729
    :goto_0
    return v2

    .line 712
    :cond_0
    if-nez p2, :cond_1

    .line 713
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const/4 v2, -0x2

    goto :goto_0

    .line 717
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :try_start_1
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    .line 719
    .local v1, "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 720
    const-string v3, "SLocationManager"

    const-string v5, "already removeCurrentLocation"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    monitor-exit v4

    goto :goto_0

    .line 726
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 727
    :catch_0
    move-exception v0

    .line 728
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCurrentLocation: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 723
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :cond_2
    :try_start_3
    const-string v3, "SLocationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCurrentLocation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, p1}, Lcom/samsung/location/ISLocationManager;->removeCurrentLocation(I)I

    move-result v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v2, v3

    goto :goto_0
.end method

.method public removeGeofence(I)I
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 357
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 358
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v1, -0x1

    .line 365
    :goto_0
    return v1

    .line 362
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->removeGeofence(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public removeSingleLocation(Landroid/app/PendingIntent;)I
    .locals 4
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 657
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 658
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v1, -0x1

    .line 669
    :goto_0
    return v1

    .line 661
    :cond_0
    if-nez p1, :cond_1

    .line 662
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/4 v1, -0x2

    goto :goto_0

    .line 666
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->removeSingleLocation(Landroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestBatchOfLocations()I
    .locals 4

    .prologue
    .line 587
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 588
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v1, -0x1

    .line 596
    :goto_0
    return v1

    .line 592
    :cond_0
    :try_start_0
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "requestBatchOfLocations "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1}, Lcom/samsung/location/ISLocationManager;->requestBatchOfLocations()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestBatchOfLocations: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public requestCurrentLocation(Lcom/samsung/location/SCurrentLocListener;)I
    .locals 5
    .param p1, "listener"    # Lcom/samsung/location/SCurrentLocListener;

    .prologue
    .line 678
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 679
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v2, -0x1

    .line 698
    :goto_0
    return v2

    .line 682
    :cond_0
    if-nez p1, :cond_1

    .line 683
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v2, -0x2

    goto :goto_0

    .line 687
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    .line 689
    .local v1, "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    if-nez v1, :cond_2

    .line 690
    new-instance v1, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SCurrentLocListener;)V

    .line 692
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mCurrentLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v2, "SLocationManager"

    const-string/jumbo v4, "requestCurrentLocation "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, v1}, Lcom/samsung/location/ISLocationManager;->requestCurrentLocation(Lcom/samsung/location/ISCurrentLocListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 695
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$CurrentLocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCurrentLocation: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public requestSingleLocation(IILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "accuracy"    # I
    .param p2, "timeout"    # I
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 634
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 635
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v1, -0x1

    .line 646
    :goto_0
    return v1

    .line 638
    :cond_0
    if-nez p3, :cond_1

    .line 639
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v1, -0x2

    goto :goto_0

    .line 643
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/location/ISLocationManager;->requestSingleLocation(IILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSingleLocation: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public startBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "period"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 458
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 459
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v2, -0x1

    .line 478
    :goto_0
    return v2

    .line 462
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 463
    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v2, -0x2

    goto :goto_0

    .line 467
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 469
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 470
    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    .line 472
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/location/ISLocationManager;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 475
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public startGeofence(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 377
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 378
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v1, -0x1

    .line 390
    :goto_0
    return v1

    .line 381
    :cond_0
    if-nez p2, :cond_1

    .line 382
    const-string v1, "SLocationManager"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, -0x2

    goto :goto_0

    .line 387
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->startGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startGeofence : RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public startLocationBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "period"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 524
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 525
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v2, -0x1

    .line 544
    :goto_0
    return v2

    .line 528
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 529
    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/4 v2, -0x2

    goto :goto_0

    .line 533
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :try_start_1
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 535
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 536
    new-instance v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/location/SLocationManager$LocListenerTransport;-><init>(Lcom/samsung/location/SLocationManager;Lcom/samsung/location/SLocationListener;)V

    .line 538
    .restart local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/location/ISLocationManager;->startLocationBatching(ILcom/samsung/location/ISLocationListener;)I

    move-result v2

    monitor-exit v3

    goto :goto_0

    .line 541
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 542
    :catch_0
    move-exception v0

    .line 543
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 489
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 490
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const/4 v2, -0x1

    .line 509
    :goto_0
    return v2

    .line 493
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 494
    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v2, -0x2

    goto :goto_0

    .line 498
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 499
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 500
    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v2, -0x3

    goto :goto_0

    .line 504
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 507
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 508
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public stopGeofence(ILandroid/app/PendingIntent;)I
    .locals 4
    .param p1, "geofenceId"    # I
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 402
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 403
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v1, -0x1

    .line 414
    :goto_0
    return v1

    .line 406
    :cond_0
    if-nez p2, :cond_1

    .line 407
    const-string v1, "SLocationManager"

    const-string v2, "intent is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v1, -0x2

    goto :goto_0

    .line 411
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->stopGeofence(ILandroid/app/PendingIntent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopGeofence: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v1, -0x4

    goto :goto_0
.end method

.method public stopLocationBatching(ILcom/samsung/location/SLocationListener;)I
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "listener"    # Lcom/samsung/location/SLocationListener;

    .prologue
    .line 557
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v2, :cond_0

    .line 558
    const-string v2, "SLocationManager"

    const-string v3, "SLocationService is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/4 v2, -0x1

    .line 577
    :goto_0
    return v2

    .line 561
    :cond_0
    if-eqz p2, :cond_1

    if-gtz p1, :cond_2

    .line 562
    :cond_1
    const-string v2, "SLocationManager"

    const-string/jumbo v3, "parameters are not vaild"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/4 v2, -0x2

    goto :goto_0

    .line 566
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mLocListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/location/SLocationManager$LocListenerTransport;

    .line 567
    .local v1, "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    if-nez v1, :cond_3

    .line 568
    const-string v2, "SLocationManager"

    const-string v3, "Already stopped geofence"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v2, -0x3

    goto :goto_0

    .line 572
    :cond_3
    iget-object v2, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v2, p1}, Lcom/samsung/location/ISLocationManager;->stopLocationBatching(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 575
    .end local v1    # "transport":Lcom/samsung/location/SLocationManager$LocListenerTransport;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "SLocationManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopBatching: RemoteException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/4 v2, -0x4

    goto :goto_0
.end method

.method public syncGeofence(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 256
    .local p1, "geofenceIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v3, :cond_0

    .line 257
    const-string v3, "SLocationManager"

    const-string v4, "SLocationService is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v3, -0x1

    .line 271
    :goto_0
    return v3

    .line 260
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 261
    :cond_1
    const/4 v3, -0x2

    goto :goto_0

    .line 263
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 264
    .local v2, "list":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 265
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 268
    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v3, v2}, Lcom/samsung/location/ISLocationManager;->syncGeofence([I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "SLocationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncGeofence: RemoteException "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v3, -0x4

    goto :goto_0
.end method

.method public updateBatchingOptions(II)I
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "period"    # I

    .prologue
    .line 608
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    if-nez v1, :cond_0

    .line 609
    const-string v1, "SLocationManager"

    const-string v2, "SLocationService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v1, -0x1

    .line 620
    :goto_0
    return v1

    .line 612
    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 613
    :cond_1
    const-string v1, "SLocationManager"

    const-string/jumbo v2, "parameters are not vaild"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v1, -0x2

    goto :goto_0

    .line 617
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/location/SLocationManager;->mService:Lcom/samsung/location/ISLocationManager;

    invoke-interface {v1, p1, p2}, Lcom/samsung/location/ISLocationManager;->updateBatchingOptions(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "SLocationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateBatchingOptions: RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v1, -0x4

    goto :goto_0
.end method

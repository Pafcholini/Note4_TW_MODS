.class public Lcom/samsung/location/CellGeofenceProvider;
.super Ljava/lang/Object;
.source "CellGeofenceProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellGeofenceProvider"

.field private static mEnabled:Z


# instance fields
.field private mSGeofenceCellInterface:Lcom/samsung/location/ISLocationCellInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/location/CellGeofenceProvider;->mEnabled:Z

    .line 120
    invoke-static {}, Lcom/samsung/location/CellGeofenceProvider;->class_init_native()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/location/CellGeofenceProvider;->mEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/samsung/location/CellGeofenceProvider$1;

    invoke-direct {v0, p0}, Lcom/samsung/location/CellGeofenceProvider$1;-><init>(Lcom/samsung/location/CellGeofenceProvider;)V

    iput-object v0, p0, Lcom/samsung/location/CellGeofenceProvider;->mSGeofenceCellInterface:Lcom/samsung/location/ISLocationCellInterface;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/CellGeofenceProvider;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_init_cell_geofence(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/CellGeofenceProvider;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_add_cell_geofence(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/location/CellGeofenceProvider;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/CellGeofenceProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/location/CellGeofenceProvider;->native_enable_cell_geofence(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/CellGeofenceProvider;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_remove_cell_geofence(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/CellGeofenceProvider;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_start_collect_cell(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/location/CellGeofenceProvider;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/CellGeofenceProvider;
    .param p1, "x1"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/location/CellGeofenceProvider;->native_stop_collect_cell(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/location/CellGeofenceProvider;[II[II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/location/CellGeofenceProvider;
    .param p1, "x1"    # [I
    .param p2, "x2"    # I
    .param p3, "x3"    # [I
    .param p4, "x4"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/location/CellGeofenceProvider;->native_sync_cell_geofence([II[II)V

    return-void
.end method

.method private static native class_init_native()Z
.end method

.method private native native_add_cell_geofence(I)V
.end method

.method private native native_cleanup_cell_geofence()V
.end method

.method private native native_enable_cell_geofence(II)V
.end method

.method private native native_init()Z
.end method

.method private native native_init_cell_geofence(I)V
.end method

.method private native native_remove_cell_geofence(I)V
.end method

.method private native native_start_collect_cell(I)V
.end method

.method private native native_stop_collect_cell(I)V
.end method

.method private native native_sync_cell_geofence([II[II)V
.end method

.method private reportCellGeofenceDetected(II)V
    .locals 4
    .param p1, "area_inout"    # I
    .param p2, "geofenceId"    # I

    .prologue
    .line 98
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 99
    .local v1, "mService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v1, p2, p1}, Lcom/samsung/location/ISLocationManager;->reportCellGeofenceDetected(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reportCellGeofenceRequestFail(I)V
    .locals 4
    .param p1, "geofenceId"    # I

    .prologue
    .line 109
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 110
    .local v1, "mService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/location/ISLocationManager;->reportCellGeofenceRequestFail(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public disable()V
    .locals 2

    .prologue
    .line 62
    const-string v0, "CellGeofenceProvider"

    const-string v1, "CellGeofenceProvider is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 47
    const-string v2, "CellGeofenceProvider"

    const-string v3, "CellGeofenceProvider is enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string/jumbo v2, "sec_location"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/location/ISLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/location/ISLocationManager;

    move-result-object v1

    .line 50
    .local v1, "mService":Lcom/samsung/location/ISLocationManager;
    if-eqz v1, :cond_0

    .line 52
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/location/CellGeofenceProvider;->getSGeofenceCellInterface()Lcom/samsung/location/ISLocationCellInterface;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/location/ISLocationManager;->setGeofenceCellInterface(Lcom/samsung/location/ISLocationCellInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/location/CellGeofenceProvider;->native_init()Z

    .line 59
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CellGeofenceProvider"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSGeofenceCellInterface()Lcom/samsung/location/ISLocationCellInterface;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/samsung/location/CellGeofenceProvider;->mSGeofenceCellInterface:Lcom/samsung/location/ISLocationCellInterface;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/samsung/location/CellGeofenceProvider;->mEnabled:Z

    return v0
.end method

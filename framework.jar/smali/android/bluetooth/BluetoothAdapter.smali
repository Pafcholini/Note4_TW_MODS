.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_FM_RADIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.FM_RADIO_STATE_CHANGED"

.field public static final ACTION_LE_TESE_END_COMPLETED:Ljava/lang/String; = "android.bluetooth.adapter.action.ACTION_LE_TESE_END_COMPLETED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_RADIO_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.RADIO_STATE_CHANGED"

.field public static final ACTION_READ_BT_ANTENNA:Ljava/lang/String; = "android.bluetooth.adapter.action.READ_BT_ANTENNA"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field public static final ACTION_TIMESYNC_CONNECTIONLESS_TIMESTAMP:Ljava/lang/String; = "android.bluetooth.adapter.action.TIMESYNC_CONNECTIONLESS_TIMESTAMP"

.field public static final ACTION_TIMESYNC_CONNECTION_TIMESTAMP:Ljava/lang/String; = "android.bluetooth.adapter.action.TIMESYNC_CONNECTION_TIMESTAMP"

.field public static final ACTION_VSC_TIMESYNC:Ljava/lang/String; = "android.bluetooth.adapter.action.VSC_TIMESYNC"

.field public static final ACTIVITY_ENERGY_INFO_CACHED:I = 0x0

.field public static final ACTIVITY_ENERGY_INFO_REFRESHED:I = 0x1

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final CONTROLLER_ENERGY_UPDATE_TIMEOUT_MILLIS:I = 0x1e

.field private static final DBG:Z = true

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_BT_ANT_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.BT_ANT_STATE"

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LE_PACKET_COUNTS:Ljava/lang/String; = "android.bluetooth.adapter.extra.EXTRA_LE_PACKET_COUNTS"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final EXTRA_TIMESYNC_CONNECTIONLESS_STAMP_VALUE1:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTIONLESS_STAMP_VALUE1"

.field public static final EXTRA_TIMESYNC_CONNECTIONLESS_STAMP_VALUE2:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTIONLESS_STAMP_VALUE2"

.field public static final EXTRA_TIMESYNC_CONNECTIONLESS_STAMP_VALUE3:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTIONLESS_STAMP_VALUE3"

.field public static final EXTRA_TIMESYNC_CONNECTIONLESS_STAMP_VALUE4:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTIONLESS_STAMP_VALUE4"

.field public static final EXTRA_TIMESYNC_CONNECTIONLESS_STAMP_VALUE5:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTIONLESS_STAMP_VALUE5"

.field public static final EXTRA_TIMESYNC_CONNECTION_STAMP_VALUE1:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTION_STAMP_VALUE1"

.field public static final EXTRA_TIMESYNC_CONNECTION_STAMP_VALUE2:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTION_STAMP_VALUE2"

.field public static final EXTRA_TIMESYNC_CONNECTION_STAMP_VALUE3:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTION_STAMP_VALUE3"

.field public static final EXTRA_TIMESYNC_CONNECTION_STAMP_VALUE4:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTION_STAMP_VALUE4"

.field public static final EXTRA_TIMESYNC_CONNECTION_STAMP_VALUE5:Ljava/lang/String; = "android.bluetooth.adapter.extra.TIMESYNC_CONNECTION_STAMP_VALUE5"

.field public static final EXTRA_VSC_TIMESYNC_STATUS:Ljava/lang/String; = "android.bluetooth.adapter.extra.VSC_TIMESYNC_STATUS"

.field public static final EXTRA_VSC_TIMESYNC_VALUE:Ljava/lang/String; = "android.bluetooth.adapter.extra.VSC_TIMESYNC_VALUE"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_RADIO_OFF:I = 0xf

.field public static final STATE_RADIO_ON:I = 0xe

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final VDBG:Z

.field private static avStreamingFlag:Z

.field private static avStreamingPending:Z

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private static sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;


# instance fields
.field private final BLUETOOTH_SHUTDOWN:I

.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/IBluetooth;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 543
    sput-boolean v0, Landroid/bluetooth/BluetoothAdapter;->avStreamingPending:Z

    .line 544
    sput-boolean v0, Landroid/bluetooth/BluetoothAdapter;->avStreamingFlag:Z

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 3
    .param p1, "managerService"    # Landroid/bluetooth/IBluetoothManager;

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    .line 821
    const/16 v1, 0xee

    iput v1, p0, Landroid/bluetooth/BluetoothAdapter;->BLUETOOTH_SHUTDOWN:I

    .line 1915
    new-instance v1, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    .line 2103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    .line 574
    if-nez p1, :cond_0

    .line 575
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bluetooth manager service is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {p1, v1}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    .line 581
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    .line 582
    return-void

    .line 579
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetoothManagerCallback;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetooth;

    .prologue
    .line 91
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object v0
.end method

.method static synthetic access$500()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x0

    .line 2076
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 2096
    :cond_0
    :goto_0
    return v2

    .line 2079
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 2080
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2081
    .local v0, "c":C
    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_0

    .line 2079
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2084
    :pswitch_0
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_3
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x46

    if-gt v0, v3, :cond_0

    goto :goto_2

    .line 2090
    :pswitch_1
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 2096
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 2081
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .param p3, "auth"    # Z
    .param p4, "encrypt"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1585
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-direct {v1, v2, p3, p4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    .line 1587
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    .line 1588
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1589
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 1593
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1595
    :cond_0
    return-object v1
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 5

    .prologue
    .line 557
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 558
    const-string v2, "bluetooth_manager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 559
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 560
    invoke-static {v0}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 561
    .local v1, "managerService":Landroid/bluetooth/IBluetoothManager;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 566
    .end local v1    # "managerService":Landroid/bluetooth/IBluetoothManager;
    :cond_0
    :goto_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 563
    :cond_1
    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v4, "Bluetooth binder is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 557
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1650
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1652
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1653
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 1658
    :cond_0
    return-object v1
.end method

.method private toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 2
    .param p1, "devices"    # [Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2053
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2054
    .local v0, "deviceSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public callBtCommonApi(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "cmdId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2332
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    :try_start_1
    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callBtCommonApi is called!!, cmdId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v3, 0x0

    invoke-interface {v1, p1, p2, v3}, Landroid/bluetooth/IBluetooth;->callBtCommonApi(ILandroid/os/Bundle;Landroid/bluetooth/IBtUCallback;)Z

    move-result v1

    monitor-exit v2

    .line 2337
    :goto_0
    return v1

    .line 2335
    :cond_0
    monitor-exit v2

    .line 2337
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2335
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2336
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public callBtCommonApi(ILandroid/os/Bundle;Landroid/bluetooth/IBtUCallback;)Z
    .locals 5
    .param p1, "cmdId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "uCb"    # Landroid/bluetooth/IBtUCallback;

    .prologue
    .line 2349
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2350
    :try_start_1
    const-string v1, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callBtCommonApi is called!!, cmdId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetooth;->callBtCommonApi(ILandroid/os/Bundle;Landroid/bluetooth/IBtUCallback;)Z

    move-result v1

    monitor-exit v2

    .line 2354
    :goto_0
    return v1

    .line 2352
    :cond_0
    monitor-exit v2

    .line 2354
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 2352
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2353
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1155
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1161
    :goto_0
    return v1

    .line 1157
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1158
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1159
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1160
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 1
    .param p1, "on"    # Z
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;

    .prologue
    const/4 v0, 0x0

    .line 2015
    if-nez p2, :cond_0

    .line 2025
    :cond_0
    return v0
.end method

.method public clearAutoConnDevice()V
    .locals 3

    .prologue
    .line 1090
    const-string v1, "BluetoothAdapter"

    const-string v2, "clearAutoConnDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1093
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->clearAutoConnDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 13
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 1857
    if-nez p2, :cond_0

    .line 1913
    :goto_0
    return-void

    .line 1859
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v5, p2

    .line 1861
    check-cast v5, Landroid/bluetooth/BluetoothHeadset;

    .line 1862
    .local v5, "headset":Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_0

    .end local v5    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :pswitch_2
    move-object v0, p2

    .line 1865
    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 1866
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_0

    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :pswitch_3
    move-object v1, p2

    .line 1869
    check-cast v1, Landroid/bluetooth/BluetoothA2dpSink;

    .line 1870
    .local v1, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    goto :goto_0

    .end local v1    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :pswitch_4
    move-object v2, p2

    .line 1873
    check-cast v2, Landroid/bluetooth/BluetoothAvrcpController;

    .line 1874
    .local v2, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    goto :goto_0

    .end local v2    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :pswitch_5
    move-object v9, p2

    .line 1877
    check-cast v9, Landroid/bluetooth/BluetoothInputDevice;

    .line 1878
    .local v9, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    goto :goto_0

    .end local v9    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :pswitch_6
    move-object v11, p2

    .line 1881
    check-cast v11, Landroid/bluetooth/BluetoothPan;

    .line 1882
    .local v11, "pan":Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_0

    .end local v11    # "pan":Landroid/bluetooth/BluetoothPan;
    :pswitch_7
    move-object v12, p2

    .line 1885
    check-cast v12, Landroid/bluetooth/BluetoothSapClient;

    .line 1886
    .local v12, "sapclient":Landroid/bluetooth/BluetoothSapClient;
    invoke-virtual {v12}, Landroid/bluetooth/BluetoothSapClient;->close()V

    goto :goto_0

    .end local v12    # "sapclient":Landroid/bluetooth/BluetoothSapClient;
    :pswitch_8
    move-object v7, p2

    .line 1889
    check-cast v7, Landroid/bluetooth/BluetoothHealth;

    .line 1890
    .local v7, "health":Landroid/bluetooth/BluetoothHealth;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_0

    .end local v7    # "health":Landroid/bluetooth/BluetoothHealth;
    :pswitch_9
    move-object v3, p2

    .line 1893
    check-cast v3, Landroid/bluetooth/BluetoothGatt;

    .line 1894
    .local v3, "gatt":Landroid/bluetooth/BluetoothGatt;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    .end local v3    # "gatt":Landroid/bluetooth/BluetoothGatt;
    :pswitch_a
    move-object v4, p2

    .line 1897
    check-cast v4, Landroid/bluetooth/BluetoothGattServer;

    .line 1898
    .local v4, "gattServer":Landroid/bluetooth/BluetoothGattServer;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto :goto_0

    .end local v4    # "gattServer":Landroid/bluetooth/BluetoothGattServer;
    :pswitch_b
    move-object v10, p2

    .line 1901
    check-cast v10, Landroid/bluetooth/BluetoothMap;

    .line 1902
    .local v10, "map":Landroid/bluetooth/BluetoothMap;
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothMap;->close()V

    goto :goto_0

    .end local v10    # "map":Landroid/bluetooth/BluetoothMap;
    :pswitch_c
    move-object v6, p2

    .line 1905
    check-cast v6, Landroid/bluetooth/BluetoothHeadsetClient;

    .line 1906
    .local v6, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    goto :goto_0

    .end local v6    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :pswitch_d
    move-object v8, p2

    .line 1909
    check-cast v8, Landroid/bluetooth/BluetoothHidDevice;

    .line 1910
    .local v8, "hidd":Landroid/bluetooth/BluetoothHidDevice;
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHidDevice;->close()V

    goto :goto_0

    .line 1859
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method

.method public configHciSnoopLog(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 890
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->configHciSnoopLog(Z)Z

    move-result v1

    monitor-exit v2

    .line 894
    :goto_0
    return v1

    .line 892
    :cond_0
    monitor-exit v2

    .line 894
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 892
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 893
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public configScoLoopback(Z)Z
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 1762
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1763
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->configScoLoopback(Z)Z

    move-result v1

    monitor-exit v2

    .line 1766
    :goto_0
    return v1

    .line 1764
    :cond_0
    monitor-exit v2

    .line 1766
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1764
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1765
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public createVendorHciSocket(IIII)Landroid/bluetooth/BluetoothSocket;
    .locals 8
    .param p1, "hciOpCode"    # I
    .param p2, "hciEvent"    # I
    .param p3, "extraCmdId"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1538
    new-instance v0, Landroid/bluetooth/BluetoothSocket;

    const/4 v1, 0x4

    const/4 v2, -0x1

    new-instance v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    shl-int/lit8 v4, p1, 0x10

    shl-int/lit8 v6, p3, 0x8

    or-int/2addr v4, v6

    or-int v6, v4, p2

    const/4 v7, 0x0

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/bluetooth/BluetoothSocket;-><init>(IIZZLandroid/bluetooth/BluetoothDevice;ILandroid/os/ParcelUuid;)V

    return-object v0
.end method

.method public disable()Z
    .locals 3

    .prologue
    .line 793
    const-string v1, "BluetoothAdapter"

    const-string v2, "disable()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 797
    :goto_0
    return v1

    .line 796
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 797
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disable(Z)Z
    .locals 3
    .param p1, "persist"    # Z

    .prologue
    .line 813
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 815
    :goto_0
    return v1

    .line 814
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 815
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpInFile()V
    .locals 3

    .prologue
    .line 2287
    const-string v1, "BluetoothAdapter"

    const-string v2, "dumpInFile in BluetoothAdapter"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-nez v1, :cond_0

    .line 2289
    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "mManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    :goto_0
    return-void

    .line 2294
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2295
    :catch_0
    move-exception v0

    .line 2296
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dutModeConfigure(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1703
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1709
    :goto_0
    return v1

    .line 1705
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1706
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->dutModeConfigure(Z)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1707
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1708
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 757
    const-string v2, "BluetoothAdapter"

    const-string v3, "enable()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 759
    const-string v2, "BluetoothAdapter"

    const-string v3, "enable(): BT is already enabled..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_0
    return v1

    .line 763
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 764
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 765
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNoAutoConnect()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1974
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1975
    const-string v2, "BluetoothAdapter"

    const-string v3, "enableNoAutoConnect(): BT is already enabled..!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :goto_0
    return v1

    .line 1979
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1980
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1981
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2059
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2065
    :goto_0
    return-void

    .line 2060
    :catch_0
    move-exception v0

    .line 2061
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2063
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 849
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 851
    :goto_0
    return-object v1

    .line 850
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 3

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isMultipleAdvertisementSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    const-string v0, "BluetoothAdapter"

    const-string v1, "bluetooth le advertising not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    const/4 v0, 0x0

    .line 640
    :goto_0
    return-object v0

    .line 635
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 636
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_1

    .line 637
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 639
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    goto :goto_0

    .line 639
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothLeAdvertiserForSingle()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 3

    .prologue
    .line 656
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isPeripheralModeSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "single bluetooth le advertising not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    .line 665
    :goto_0
    return-object v0

    .line 660
    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 661
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v0, :cond_1

    .line 662
    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    .line 664
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 3

    .prologue
    .line 675
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 676
    :try_start_0
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v0, :cond_0

    .line 677
    new-instance v0, Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 679
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0

    .line 679
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 1

    .prologue
    .line 2100
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 3
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 2106
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1

    .line 2107
    if-nez p1, :cond_1

    .line 2108
    :try_start_0
    const-string v0, "BluetoothAdapter"

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2113
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0

    .line 2109
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2110
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1302
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1303
    new-array v1, v3, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    .line 1311
    :goto_0
    return-object v1

    .line 1306
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1307
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1308
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1310
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1311
    const/4 v1, 0x0

    goto :goto_0

    .line 1308
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1309
    const/4 v1, 0x0

    :try_start_4
    new-array v1, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v1

    goto :goto_0
.end method

.method public getConnectionState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1328
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1334
    :goto_0
    return v1

    .line 1330
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1332
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1333
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 6
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1264
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    move-object v1, v2

    .line 1287
    :goto_0
    return-object v1

    .line 1267
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->isActivityAndEnergyReportingSupported()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1268
    goto :goto_0

    .line 1270
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1271
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    .line 1272
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->getActivityEnergyInfoFromController()V

    .line 1273
    const-wide/16 v4, 0x1e

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1275
    :cond_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v3}, Landroid/bluetooth/IBluetooth;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    .line 1276
    .local v1, "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1277
    monitor-exit p0

    goto :goto_0

    .line 1281
    .end local v1    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1282
    :catch_0
    move-exception v0

    .line 1283
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback wait interrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_1
    move-object v1, v2

    .line 1287
    goto :goto_0

    .line 1279
    .restart local v1    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :cond_3
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0

    .line 1284
    .end local v1    # "record":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :catch_1
    move-exception v0

    .line 1285
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 1059
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1065
    :goto_0
    return v1

    .line 1061
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1063
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1064
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getLEAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 859
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getLEAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 861
    :goto_0
    return-object v1

    .line 860
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 861
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 873
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 875
    :goto_0
    return-object v1

    .line 874
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 875
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .param p1, "profile"    # I

    .prologue
    const/4 v1, 0x0

    .line 1353
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1361
    :goto_0
    return v1

    .line 1355
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1356
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1357
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1358
    :catch_0
    move-exception v0

    .line 1359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getProfileConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .param p3, "profile"    # I

    .prologue
    .line 1805
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v11, 0x0

    .line 1841
    :goto_0
    return v11

    .line 1807
    :cond_1
    const/4 v11, 0x1

    if-ne p3, v11, :cond_2

    .line 1808
    new-instance v3, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v3, p1, p2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1809
    .local v3, "headset":Landroid/bluetooth/BluetoothHeadset;
    const/4 v11, 0x1

    goto :goto_0

    .line 1810
    .end local v3    # "headset":Landroid/bluetooth/BluetoothHeadset;
    :cond_2
    const/4 v11, 0x2

    if-ne p3, v11, :cond_3

    .line 1811
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1812
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    const/4 v11, 0x1

    goto :goto_0

    .line 1813
    .end local v0    # "a2dp":Landroid/bluetooth/BluetoothA2dp;
    :cond_3
    const/16 v11, 0xa

    if-ne p3, v11, :cond_4

    .line 1814
    new-instance v1, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothA2dpSink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1815
    .local v1, "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    const/4 v11, 0x1

    goto :goto_0

    .line 1816
    .end local v1    # "a2dpSink":Landroid/bluetooth/BluetoothA2dpSink;
    :cond_4
    const/16 v11, 0xb

    if-ne p3, v11, :cond_5

    .line 1817
    new-instance v2, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothAvrcpController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1818
    .local v2, "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    const/4 v11, 0x1

    goto :goto_0

    .line 1819
    .end local v2    # "avrcp":Landroid/bluetooth/BluetoothAvrcpController;
    :cond_5
    const/4 v11, 0x4

    if-ne p3, v11, :cond_6

    .line 1820
    new-instance v7, Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {v7, p1, p2}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1821
    .local v7, "iDev":Landroid/bluetooth/BluetoothInputDevice;
    const/4 v11, 0x1

    goto :goto_0

    .line 1822
    .end local v7    # "iDev":Landroid/bluetooth/BluetoothInputDevice;
    :cond_6
    const/4 v11, 0x5

    if-ne p3, v11, :cond_7

    .line 1823
    new-instance v9, Landroid/bluetooth/BluetoothPan;

    invoke-direct {v9, p1, p2}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1824
    .local v9, "pan":Landroid/bluetooth/BluetoothPan;
    const/4 v11, 0x1

    goto :goto_0

    .line 1825
    .end local v9    # "pan":Landroid/bluetooth/BluetoothPan;
    :cond_7
    const/16 v11, 0x15

    if-ne p3, v11, :cond_8

    .line 1826
    new-instance v10, Landroid/bluetooth/BluetoothSapClient;

    invoke-direct {v10, p1, p2}, Landroid/bluetooth/BluetoothSapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1827
    .local v10, "sapclient":Landroid/bluetooth/BluetoothSapClient;
    const/4 v11, 0x1

    goto :goto_0

    .line 1828
    .end local v10    # "sapclient":Landroid/bluetooth/BluetoothSapClient;
    :cond_8
    const/4 v11, 0x3

    if-ne p3, v11, :cond_9

    .line 1829
    new-instance v5, Landroid/bluetooth/BluetoothHealth;

    invoke-direct {v5, p1, p2}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1830
    .local v5, "health":Landroid/bluetooth/BluetoothHealth;
    const/4 v11, 0x1

    goto :goto_0

    .line 1831
    .end local v5    # "health":Landroid/bluetooth/BluetoothHealth;
    :cond_9
    const/16 v11, 0x9

    if-ne p3, v11, :cond_a

    .line 1832
    new-instance v8, Landroid/bluetooth/BluetoothMap;

    invoke-direct {v8, p1, p2}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1833
    .local v8, "map":Landroid/bluetooth/BluetoothMap;
    const/4 v11, 0x1

    goto :goto_0

    .line 1834
    .end local v8    # "map":Landroid/bluetooth/BluetoothMap;
    :cond_a
    const/16 v11, 0x10

    if-ne p3, v11, :cond_b

    .line 1835
    new-instance v4, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v4, p1, p2}, Landroid/bluetooth/BluetoothHeadsetClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1836
    .local v4, "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    const/4 v11, 0x1

    goto :goto_0

    .line 1837
    .end local v4    # "headsetClient":Landroid/bluetooth/BluetoothHeadsetClient;
    :cond_b
    const/16 v11, 0x16

    if-ne p3, v11, :cond_c

    .line 1838
    new-instance v6, Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {v6, p1, p2}, Landroid/bluetooth/BluetoothHidDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1839
    .local v6, "hidd":Landroid/bluetooth/BluetoothHidDevice;
    const/4 v11, 0x1

    goto :goto_0

    .line 1841
    .end local v6    # "hidd":Landroid/bluetooth/BluetoothHidDevice;
    :cond_c
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 597
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 10
    .param p1, "address"    # [B

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 612
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 613
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address must have 6 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_1
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v5

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    aget-byte v4, p1, v6

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v6

    aget-byte v4, p1, v7

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v7

    aget-byte v4, p1, v8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v8

    aget-byte v4, p1, v9

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x5

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 957
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 963
    :goto_0
    return v1

    .line 959
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getScanMode()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 961
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 962
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState()I
    .locals 5

    .prologue
    .line 714
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1

    .line 719
    .local v1, "state":I
    monitor-exit v3

    .line 726
    .end local v1    # "state":I
    :goto_0
    return v1

    .line 723
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 725
    :goto_1
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": getState() :  mService = null. Returning STATE_OFF"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const/16 v1, 0xa

    goto :goto_0

    .line 723
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 724
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 906
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 912
    :goto_0
    return-object v1

    .line 908
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 910
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 911
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1184
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1190
    :goto_0
    return v1

    .line 1186
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1188
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1189
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 694
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v1

    monitor-exit v2

    .line 698
    :goto_0
    return v1

    .line 696
    :cond_0
    monitor-exit v2

    .line 698
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 696
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 697
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isHeadsetScmstSupported()I
    .locals 2

    .prologue
    .line 1046
    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "isHeadsetScmstSupported : SecProductFeature_BLUETOOTH:false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/4 v0, 0x0

    return v0
.end method

.method public isMultipleAdvertisementSupported()Z
    .locals 3

    .prologue
    .line 1201
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1205
    :goto_0
    return v1

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get isMultipleAdvertisementSupported, error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 3

    .prologue
    .line 1231
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isOffloadedFilteringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1235
    :goto_0
    return v1

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get isOffloadedFilteringSupported, error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1235
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 3

    .prologue
    .line 1246
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1250
    :goto_0
    return v1

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get isOffloadedScanBatchingSupported, error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1250
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPeripheralModeSupported()Z
    .locals 3

    .prologue
    .line 1216
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isPeripheralModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1220
    :goto_0
    return v1

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get peripheral mode capability: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1220
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public leTestMode(III)Z
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "freq"    # I
    .param p3, "pkt"    # I

    .prologue
    const/4 v1, 0x0

    .line 1723
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1729
    :goto_0
    return v1

    .line 1725
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1726
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetooth;->leTestMode(III)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1727
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1728
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1629
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1631
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1632
    .local v0, "errno":I
    if-gez v0, :cond_0

    .line 1636
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1638
    :cond_0
    return-object v1
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1578
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1607
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1609
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1610
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 1614
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1616
    :cond_0
    return-object v1
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1529
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .param p1, "channel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1462
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v1, v2, v2, v2, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1464
    .local v1, "socket":Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1465
    .local v0, "errno":I
    if-eqz v0, :cond_0

    .line 1469
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1471
    :cond_0
    return-object v1
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1498
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public putLogs(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2310
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-nez v1, :cond_0

    .line 2311
    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "mManagerService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :goto_0
    return-void

    .line 2316
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->putLogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2317
    :catch_0
    move-exception v0

    .line 2318
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readBtAnt()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1398
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1404
    :goto_0
    return v1

    .line 1400
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1401
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->readBtAnt()I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1402
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1403
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1670
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 1691
    :cond_0
    return-object v2
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/bluetooth/IBluetoothManagerCallback;

    .prologue
    .line 2117
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1

    .line 2118
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2119
    monitor-exit v1

    .line 2120
    return-void

    .line 2119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectBTAntenna(I)I
    .locals 4
    .param p1, "number"    # I

    .prologue
    const/4 v1, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1393
    :goto_0
    return v1

    .line 1389
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1390
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->selectBTAntenna(I)I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1391
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1392
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendVsc(I[BI)I
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "params"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 1376
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1382
    :goto_0
    return v1

    .line 1378
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1379
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetooth;->sendVsc(I[BI)I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1380
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1381
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setConnectionScanParameter(II)Z
    .locals 5
    .param p1, "scan_interval"    # I
    .param p2, "scan_window"    # I

    .prologue
    const/4 v1, 0x0

    .line 1776
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConnectionScanParameter() - scan_interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan_window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-nez v2, :cond_0

    .line 1785
    :goto_0
    return v1

    .line 1780
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setConnectionScanParameter(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1785
    const/4 v1, 0x1

    goto :goto_0

    .line 1781
    :catch_0
    move-exception v0

    .line 1782
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .prologue
    .line 1070
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1072
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z

    .line 1074
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1075
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 931
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 937
    :goto_0
    return v1

    .line 933
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 935
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 936
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanMode(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 1006
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1008
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setScanMode(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 995
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1001
    :goto_0
    return v1

    .line 997
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 998
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 999
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1000
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScmstContentProtection(Z)Z
    .locals 4
    .param p1, "avStreaming"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1024
    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScmstContentProtection :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SecProductFeature_BLUETOOTH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return v3
.end method

.method public shutdown()Z
    .locals 3

    .prologue
    .line 835
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    const/16 v2, 0xee

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->disableRadio(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 837
    :goto_0
    return v1

    .line 836
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 837
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sspDebugConfigure(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1741
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1747
    :goto_0
    return v1

    .line 1743
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1744
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->sspDebugConfigure(Z)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1745
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1746
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1128
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1134
    :goto_0
    return v1

    .line 1130
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1132
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1133
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2157
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 13
    .param p1, "serviceUuids"    # [Ljava/util/UUID;
    .param p2, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2177
    const-string v9, "BluetoothAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startLeScan(): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    if-nez p2, :cond_0

    .line 2179
    const-string v8, "BluetoothAdapter"

    const-string/jumbo v9, "startLeScan: null callback"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :goto_0
    return v7

    .line 2182
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v5

    .line 2183
    .local v5, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v5, :cond_1

    .line 2184
    const-string v8, "BluetoothAdapter"

    const-string/jumbo v9, "startLeScan: cannot get BluetoothLeScanner"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2188
    :cond_1
    iget-object v9, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v9

    .line 2189
    :try_start_0
    iget-object v10, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v10, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2190
    const-string v8, "BluetoothAdapter"

    const-string v10, "LE Scan has already started"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    monitor-exit v9

    goto :goto_0

    .line 2248
    :catchall_0
    move-exception v7

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 2195
    :cond_2
    :try_start_1
    iget-object v10, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v10}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2196
    .local v3, "iGatt":Landroid/bluetooth/IBluetoothGatt;
    if-nez v3, :cond_3

    .line 2198
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2201
    :cond_3
    :try_start_3
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 2228
    .local v4, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    new-instance v10, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v6

    .line 2232
    .local v6, "settings":Landroid/bluetooth/le/ScanSettings;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2233
    .local v2, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    if-eqz p1, :cond_4

    array-length v10, p1

    if-lez v10, :cond_4

    .line 2236
    new-instance v10, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v10}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v11, Landroid/os/ParcelUuid;

    const/4 v12, 0x0

    aget-object v12, p1, v12

    invoke-direct {v11, v12}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v10, v11}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v1

    .line 2238
    .local v1, "filter":Landroid/bluetooth/le/ScanFilter;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2240
    .end local v1    # "filter":Landroid/bluetooth/le/ScanFilter;
    :cond_4
    invoke-virtual {v5, v2, v6, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 2242
    iget-object v10, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v10, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2243
    :try_start_4
    monitor-exit v9

    move v7, v8

    goto :goto_0

    .line 2245
    .end local v2    # "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .end local v3    # "iGatt":Landroid/bluetooth/IBluetoothGatt;
    .end local v4    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    .end local v6    # "settings":Landroid/bluetooth/le/ScanSettings;
    :catch_0
    move-exception v0

    .line 2246
    .local v0, "e":Landroid/os/RemoteException;
    const-string v8, "BluetoothAdapter"

    const-string v10, ""

    invoke-static {v8, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2248
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/bluetooth/BluetoothAdapter$LeScanCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2263
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v3, "stopLeScan()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    .line 2265
    .local v1, "scanner":Landroid/bluetooth/le/BluetoothLeScanner;
    if-nez v1, :cond_0

    .line 2276
    :goto_0
    return-void

    .line 2268
    :cond_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v3

    .line 2269
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanCallback;

    .line 2270
    .local v0, "scanCallback":Landroid/bluetooth/le/ScanCallback;
    if-nez v0, :cond_1

    .line 2271
    const-string v2, "BluetoothAdapter"

    const-string/jumbo v4, "scan not started yet"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    monitor-exit v3

    goto :goto_0

    .line 2275
    .end local v0    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2274
    .restart local v0    # "scanCallback":Landroid/bluetooth/le/ScanCallback;
    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 2275
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public vscTimesync(I[BI)I
    .locals 4
    .param p1, "opcode"    # I
    .param p2, "params"    # [B
    .param p3, "len"    # I

    .prologue
    const/4 v1, 0x0

    .line 1438
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1444
    :goto_0
    return v1

    .line 1440
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1441
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetooth;->vscTimesync(I[BI)I

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1442
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1443
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public vscTimesyncEnable(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1417
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 1423
    :goto_0
    return v1

    .line 1419
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1420
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->vscTimesyncEnable(Z)Z

    move-result v2

    monitor-exit v3

    move v1, v2

    goto :goto_0

    .line 1421
    :cond_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1422
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

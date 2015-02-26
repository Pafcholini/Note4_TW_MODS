.class Lcom/sec/android/cover/ledcover/LedCoverController$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "LedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/LedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/LedCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/ledcover/LedCoverController;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/LedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 1
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/cover/ledcover/LedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/LedCoverController;

    # invokes: Lcom/sec/android/cover/ledcover/LedCoverController;->updateRemoteView(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/ledcover/LedCoverController;->access$300(Lcom/sec/android/cover/ledcover/LedCoverController;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V

    .line 132
    return-void
.end method

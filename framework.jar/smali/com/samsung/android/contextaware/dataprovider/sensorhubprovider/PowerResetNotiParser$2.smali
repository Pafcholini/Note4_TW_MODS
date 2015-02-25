.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;
.super Landroid/os/Handler;
.source "PowerResetNotiParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1001

    if-ne v0, v1, :cond_1

    .line 179
    const-string v0, "context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1002

    if-ne v0, v1, :cond_2

    .line 181
    const-string v0, "intent is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1003

    if-ne v0, v1, :cond_0

    .line 183
    const-string v0, "Boot Complete"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    iget-object v0, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->access$100(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser$2;->this$0:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;->bootComplete:Z

    goto :goto_0
.end method

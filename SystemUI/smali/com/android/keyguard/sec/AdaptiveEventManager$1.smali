.class Lcom/android/keyguard/sec/AdaptiveEventManager$1;
.super Landroid/os/Handler;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 98
    iget v0, p1, Landroid/os/Message;->what:I

    .line 99
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventManager;->handleEmergencyUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$000(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$1;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventManager;->handlePedoUpdate()V
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x132e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

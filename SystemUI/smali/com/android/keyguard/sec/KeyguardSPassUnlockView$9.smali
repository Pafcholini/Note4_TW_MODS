.class Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;
.super Ljava/lang/Object;
.source "KeyguardSPassUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->initializeSPassUnlockView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V
    .locals 0

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$700(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    # invokes: Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->disableDevicePermanently()V
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->access$800(Lcom/android/keyguard/sec/KeyguardSPassUnlockView;)V

    .line 1233
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardSPassUnlockView$9;->this$0:Lcom/android/keyguard/sec/KeyguardSPassUnlockView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardSPassUnlockView;->stopAndShowBackup()V

    goto :goto_0
.end method

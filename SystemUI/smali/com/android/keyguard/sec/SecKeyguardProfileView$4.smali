.class Lcom/android/keyguard/sec/SecKeyguardProfileView$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SecKeyguardProfileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardProfileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardProfileView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardProfileView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardProfileView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardProfileView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardProfileView;->access$400(Lcom/android/keyguard/sec/SecKeyguardProfileView;)V

    .line 220
    return-void
.end method

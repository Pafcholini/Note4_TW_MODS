.class Lcom/android/keyguard/KeyguardSecurityContainer$2;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    .prologue
    .line 925
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .param p1, "securityVerified"    # Z

    .prologue
    .line 935
    return-void
.end method

.method public dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;ZZ)V
    .locals 0
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z
    .param p3, "dismissIfInsecure"    # Z

    .prologue
    .line 941
    return-void
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 933
    const/4 v0, 0x0

    return v0
.end method

.method public reportUnlockAttempt(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 931
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .param p1, "r"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 939
    return-void
.end method

.method public showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 929
    return-void
.end method

.method public showWipeDialog(I)V
    .locals 0
    .param p1, "attempts"    # I

    .prologue
    .line 937
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 927
    return-void
.end method

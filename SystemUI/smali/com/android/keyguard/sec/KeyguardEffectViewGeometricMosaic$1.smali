.class Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewGeometricMosaic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic$1;->this$0:Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardEffectViewGeometricMosaic;->clearScreen()V

    .line 110
    return-void
.end method

.class Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3$1;
.super Ljava/lang/Object;
.source "SViewCoverShortcuts.java"

# interfaces
.implements Lcom/sec/android/cover/widget/PopupFrameView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3$1;->this$1:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lcom/sec/android/cover/widget/PopupFrameView;)V
    .locals 2
    .param p1, "popupView"    # Lcom/sec/android/cover/widget/PopupFrameView;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3$1;->this$1:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;

    iget-object v0, v0, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts$3;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->mSviewCover:Lcom/sec/android/cover/sviewcover/SViewCoverView;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;->access$900(Lcom/sec/android/cover/sviewcover/SViewCoverShortcuts;)Lcom/sec/android/cover/sviewcover/SViewCoverView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->setPendingIntent(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.class Lcom/android/systemui/qs/tiles/DormantModeTile$3;
.super Landroid/content/BroadcastReceiver;
.source "DormantModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DormantModeTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DormantModeTile;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 404
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$100(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$100(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DormantModeTile$3;->this$0:Lcom/android/systemui/qs/tiles/DormantModeTile;

    # getter for: Lcom/android/systemui/qs/tiles/DormantModeTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DormantModeTile;->access$100(Lcom/android/systemui/qs/tiles/DormantModeTile;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 409
    :cond_0
    return-void
.end method

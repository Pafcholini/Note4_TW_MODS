.class Lcom/android/systemui/volume/VolumePanel$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .locals 0

    .prologue
    .line 570
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 572
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCoverBroadcastReceiver: onReceive() start : intent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 578
    const-string v3, "VolumePanel"

    const-string v4, "mCoverBroadcastReceiver: Screen OFF start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    # getter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    # getter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    const-string v3, "VolumePanel"

    const-string v4, "mCoverBroadcastReceiver :  call sSafetyWarning.dismiss()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    # getter for: Lcom/android/systemui/volume/VolumePanel;->sSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$100()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 583
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 584
    const-string v3, "VolumePanel"

    const-string v4, "mCoverBroadcastReceiver :  call mDialog.dismiss"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mDialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/android/systemui/volume/VolumePanel;->access$500(Lcom/android/systemui/volume/VolumePanel;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 587
    :cond_2
    const-string v3, "VolumePanel"

    const-string v4, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-object v3, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v3}, Lcom/android/systemui/volume/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 589
    const-string v3, "VolumePanel"

    const-string v4, "mCoverBroadcastReceiver: Screen OFF end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_3
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 593
    const-string v3, "state"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 594
    .local v1, "bPluged":Z
    :goto_0
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCoverBroadcastReceiver: EarJack bPluged : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mIsShowingSCoverWarning:Z
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$600(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 597
    const-string v2, "VolumePanel"

    const-string v3, "EarJack plug-out, remove waring popup on the s view cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 602
    .end local v1    # "bPluged":Z
    :cond_4
    const-string v2, "android.view.volumepanel.CLICK_BUTTON1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 603
    const-string v2, "VolumePanel"

    const-string v3, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 607
    :cond_5
    const-string v2, "android.view.volumepanel.CLICK_BUTTON2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 609
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$700(Lcom/android/systemui/volume/VolumePanel;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 610
    const-string v2, "VolumePanel"

    const-string v3, "mCoverBroadcastReceiver : call onDismissSafeVolumeWarning() #3"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$1;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-virtual {v2}, Lcom/android/systemui/volume/VolumePanel;->onDismissSafeVolumeWarning()V

    .line 613
    :cond_6
    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCoverBroadcastReceiver: onReceive() end : intent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-void

    :cond_7
    move v1, v2

    .line 593
    goto :goto_0
.end method

.class Lcom/android/systemui/volume/VolumePanel$7;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Lcom/android/systemui/volume/ZenModePanel$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initZenModePanel()V
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
    .line 973
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    .line 994
    :goto_0
    return-void

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # setter for: Lcom/android/systemui/volume/VolumePanel;->mZenPanelExpanded:Z
    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumePanel;->access$1602(Lcom/android/systemui/volume/VolumePanel;Z)Z

    .line 991
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->updateTimeoutDelay()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1700(Lcom/android/systemui/volume/VolumePanel;)V

    .line 992
    const-string v0, "VolumePanel"

    const-string v1, "initZenModePanel : onExpanded : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)V

    goto :goto_0
.end method

.method public onInteraction()V
    .locals 2

    .prologue
    .line 983
    const-string v0, "VolumePanel"

    const-string v1, "initZenModePanel : onInteraction : call resetTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)V

    .line 985
    return-void
.end method

.method public onMoreSettings()V
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$7;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # getter for: Lcom/android/systemui/volume/VolumePanel;->mCallback:Lcom/android/systemui/volume/VolumePanel$Callback;
    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1500(Lcom/android/systemui/volume/VolumePanel;)Lcom/android/systemui/volume/VolumePanel$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/volume/VolumePanel$Callback;->onZenSettings()V

    .line 979
    :cond_0
    return-void
.end method

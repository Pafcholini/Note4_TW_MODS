.class Lcom/android/systemui/volume/VolumePanel$11;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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
    .line 2464
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 2467
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 2468
    .local v1, "tag":Ljava/lang/Object;
    if-eqz p3, :cond_6

    instance-of v2, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    if-eqz v2, :cond_6

    move-object v0, v1

    .line 2469
    check-cast v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    .line 2471
    .local v0, "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProgressChanged stream type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_0
    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    if-eqz v2, :cond_1

    iget v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 2475
    :cond_1
    if-lez p2, :cond_2

    .line 2476
    add-int/lit8 p2, p2, -0x1

    .line 2479
    :cond_2
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    if-nez v2, :cond_4

    .line 2480
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "VolumePanel"

    const-string v3, "Set force progress level 1 for call volume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2481
    :cond_3
    iget-object v2, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 2489
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v3, v0, Lcom/android/systemui/volume/VolumePanel$StreamControl;->streamType:I

    # invokes: Lcom/android/systemui/volume/VolumePanel;->getStreamVolume(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/volume/VolumePanel;->access$2100(Lcom/android/systemui/volume/VolumePanel;I)I

    move-result v2

    if-eq v2, p2, :cond_6

    .line 2490
    # getter for: Lcom/android/systemui/volume/VolumePanel;->LOGD:Z
    invoke-static {}, Lcom/android/systemui/volume/VolumePanel;->access$300()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Touch setting volume level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    const/4 v3, 0x0

    # invokes: Lcom/android/systemui/volume/VolumePanel;->setStreamVolume(Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V
    invoke-static {v2, v0, p2, v3}, Lcom/android/systemui/volume/VolumePanel;->access$2200(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$StreamControl;II)V

    .line 2494
    .end local v0    # "sc":Lcom/android/systemui/volume/VolumePanel$StreamControl;
    :cond_6
    const-string v2, "VolumePanel"

    const-string v3, "onProgressChanged : call resetTimeout()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    # invokes: Lcom/android/systemui/volume/VolumePanel;->resetTimeout()V
    invoke-static {v2}, Lcom/android/systemui/volume/VolumePanel;->access$1100(Lcom/android/systemui/volume/VolumePanel;)V

    .line 2496
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2500
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 2504
    return-void
.end method

.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MiniViewCoverMainFrameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangeCoverBackground()V
    .locals 2

    .prologue
    .line 191
    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChangeCoverBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$900(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 193
    return-void
.end method

.method public onEmergencyStateChanged()V
    .locals 2

    .prologue
    .line 133
    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Changed wallpaper about mini cover by EMERGENCY_STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$700(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->removeMusicRemoteView()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$800(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updatePage()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->setMiniCoverWallpaper()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$900(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 141
    return-void
.end method

.method public onInsertSPen(Z)V
    .locals 1
    .param p1, "penInserted"    # Z

    .prologue
    .line 106
    if-nez p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->wakeUp()V

    .line 109
    :cond_0
    return-void
.end method

.method public onLocaleChanged()V
    .locals 2

    .prologue
    .line 196
    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onLocaleChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateSettingsText()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$1500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 198
    return-void
.end method

.method public onPowerSavingModeChanged()V
    .locals 5

    .prologue
    .line 144
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$1000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v2

    const-string v3, "powersaving_switch"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 146
    .local v1, "powersavingState":I
    const/16 v0, 0x1770

    .line 147
    .local v0, "duration":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 148
    const/16 v0, 0xbb8

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->setmTimeOutDuration(I)V

    .line 151
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    .locals 1
    .param p1, "status"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateBatteryChargingState(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V
    invoke-static {v0, p1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$1100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;)V

    .line 155
    return-void
.end method

.method public onRemoteViewUpdated(Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;)V
    .locals 5
    .param p1, "remoteViewInfo"    # Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    .prologue
    .line 158
    iget-object v1, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mType:Ljava/lang/String;

    .line 159
    .local v1, "type":Ljava/lang/String;
    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$400()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRemoteViewUpdated : Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkKidsMode()V
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "needUpdatePage":Z
    const-string v2, "new_message"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "missed_call"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateMissedEvent()V

    .line 167
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mIsKidsMode:Z
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$1200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    const/4 v0, 0x1

    .line 172
    :cond_1
    const-string v2, "music_controller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "kids_music_controller"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mMusicControllerPage:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$600(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->getMusicPlayerState()Z

    move-result v2

    iget-boolean v3, p1, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;->mVisibility:Z

    if-eq v2, v3, :cond_3

    .line 176
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateMusicPlayer()V
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$1300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 177
    const/4 v0, 0x1

    .line 181
    :cond_3
    const-string v2, "battery"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->updateLowBatteryState()V
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$1400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 185
    :cond_4
    if-eqz v0, :cond_5

    .line 186
    iget-object v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mDelayedUpdatePageHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$800(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    :cond_5
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->moveToDefaultPage()V

    .line 92
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->cancelScreenOffTimer()V

    .line 93
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkKidsMode()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$200(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V

    .line 97
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->checkCharging()Z
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$300(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Z

    .line 99
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenTurnedOn() startScreenOffTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->startScreenOffTimer()V

    .line 103
    :cond_0
    return-void
.end method

.method public onUserSwitched(II)V
    .locals 6
    .param p1, "newUserId"    # I
    .param p2, "oldUserId"    # I

    .prologue
    const/16 v5, 0x64

    .line 112
    const/16 v0, 0x64

    .line 113
    .local v0, "KNOX_USER_ID":I
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v2

    .line 114
    .local v2, "versionInfo":Landroid/os/Bundle;
    const-string v3, "2.0"

    const-string v4, "version"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$500(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 117
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    if-lt p1, v5, :cond_1

    if-ge p2, v5, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 118
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    .line 124
    .end local v1    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_0
    :goto_0
    return-void

    .line 119
    .restart local v1    # "statusBarManager":Landroid/app/StatusBarManager;
    :cond_1
    if-ge p1, v5, :cond_0

    if-lt p2, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v3}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 121
    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method public onVolumeChanged()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$2;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    .line 130
    :cond_0
    return-void
.end method

.class Lcom/android/systemui/keyguard/KeyguardViewMediator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 495
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 500
    return-void
.end method

.method public onFingerprintRecognized(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1400(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    .line 598
    :cond_0
    return-void
.end method

.method public onKnoxSwitching()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 410
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onKnoxSwitching"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 412
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mPhoneState:I
    invoke-static {v0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$602(Lcom/android/systemui/keyguard/KeyguardViewMediator;I)I

    .line 475
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 476
    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$700(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$800(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mScreenOffByProxSensor:Z
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$900(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const-string v0, "KeyguardViewMediator"

    const-string v2, "screen is off and call ended, let\'s make sure the keyguard is showing"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 489
    :cond_0
    monitor-exit v1

    .line 490
    return-void

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 504
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 505
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "subscription"    # I

    .prologue
    .line 509
    const-string v0, "KeyguardViewMediator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$11;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 516
    :pswitch_0
    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 519
    const-string v0, "KeyguardViewMediator"

    const-string v1, "ICC_ABSENT isn\'t showing, we need to show the keyguard since the device isn\'t provisioned yet."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 527
    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 524
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 531
    :pswitch_1
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    invoke-static {}, Lcom/android/keyguard/sec/MultiSimUtils;->getPINPUKRequest()Z

    move-result v0

    if-nez v0, :cond_3

    .line 533
    const-string v0, "KeyguardViewMediator"

    const-string v1, "onSimStateChanged getPINPUKRequest()==false: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 537
    :cond_3
    monitor-enter p0

    .line 538
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 539
    const-string v0, "KeyguardViewMediator"

    const-string v1, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim pin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 545
    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 543
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 548
    :pswitch_2
    monitor-enter p0

    .line 549
    :try_start_4
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 550
    const-string v0, "KeyguardViewMediator"

    const-string v1, "INTENT_VALUE_ICC_LOCKED and keygaurd isn\'t showing; need to show keyguard so user can enter sim perso"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 557
    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 554
    :cond_5
    :try_start_5
    const-string v0, "KeyguardViewMediator"

    const-string v1, "send the handler LAUNCH_PERSO_LOCK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    .line 560
    :pswitch_3
    monitor-enter p0

    .line 561
    :try_start_6
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 562
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED and keygaurd isn\'t showing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 570
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 566
    :cond_6
    :try_start_7
    const-string v0, "KeyguardViewMediator"

    const-string v1, "PERM_DISABLED, resetStateLocked toshow permanently disabled message in lockscreen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_4

    .line 573
    :pswitch_4
    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isCTCModel()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isMultiSIMDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 576
    :cond_7
    monitor-enter p0

    .line 577
    :try_start_8
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 578
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 580
    :cond_8
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 585
    :pswitch_5
    monitor-enter p0

    .line 586
    :try_start_9
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 587
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 589
    :cond_9
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTrustChanged(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 417
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrustChanged( Showing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 419
    .local v0, "hasTrust":Z
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z
    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$002(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 421
    const-string v1, "KeyguardViewMediator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTrustChanged( mTrust = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTrust:Z
    invoke-static {v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$000(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 427
    :cond_0
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 468
    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 469
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$500(Lcom/android/systemui/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 463
    invoke-static {}, Lcom/android/keyguard/MultiUserAvatarCache;->getInstance()Lcom/android/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 464
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 451
    if-eqz p1, :cond_0

    .line 452
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v1, v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 453
    .local v0, "info":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->dismiss()V

    .line 458
    .end local v0    # "info":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 434
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$302(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 437
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    .line 439
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$402(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    .line 440
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->resetStateLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$100(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/systemui/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 445
    monitor-exit v1

    .line 446
    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

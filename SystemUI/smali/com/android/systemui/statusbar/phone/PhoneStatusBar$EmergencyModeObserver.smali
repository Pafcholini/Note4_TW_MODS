.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmergencyModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 1608
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1609
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1612
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1614
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "emergency_mode"

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v9

    invoke-static {v7, v8, v6, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v1, v5

    .line 1615
    .local v1, "mEnabled":Z
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v7, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1616
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmergencyMode(Z)V

    .line 1621
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1622
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1623
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1624
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1633
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    if-eqz v7, :cond_1

    .line 1634
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1635
    .local v2, "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 1637
    .local v3, "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_6

    .line 1638
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1639
    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1646
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingButtonHolder:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1647
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingDivider:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1651
    .end local v2    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v7, :cond_2

    .line 1652
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7, v8}, Lcom/android/systemui/cover/SViewCoverLauncher;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 1657
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    const v8, 0x7f0e0362

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1658
    .local v0, "dateTimeView":Landroid/view/View;
    if-eqz v1, :cond_7

    move v7, v6

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 1661
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v1, :cond_8

    :goto_4
    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyLongLifeMode:Z
    invoke-static {v7, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 1662
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1665
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1666
    return-void

    .end local v0    # "dateTimeView":Landroid/view/View;
    .end local v1    # "mEnabled":Z
    :cond_3
    move v1, v6

    .line 1614
    goto/16 :goto_0

    .line 1625
    .restart local v1    # "mEnabled":Z
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v7

    if-nez v7, :cond_5

    .line 1626
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingContainer:Landroid/widget/FrameLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/FrameLayout;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1627
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_1

    .line 1629
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQsPanelOnKeyguard(Z)V

    goto/16 :goto_1

    .line 1641
    .restart local v2    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$EmergencyModeObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1642
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f0c0332

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1643
    const v7, 0x7f0c02b0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto/16 :goto_2

    .end local v2    # "mSettingButtonParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "mSettingDividerParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "res":Landroid/content/res/Resources;
    .restart local v0    # "dateTimeView":Landroid/view/View;
    :cond_7
    move v7, v5

    .line 1658
    goto :goto_3

    :cond_8
    move v5, v6

    .line 1661
    goto :goto_4
.end method

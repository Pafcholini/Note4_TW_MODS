.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$carrierLabelHeight:I

.field final synthetic val$isKeyGuard:Z

.field final synthetic val$isShadeLocked:Z

.field final synthetic val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZLandroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .prologue
    .line 2168
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$carrierLabelHeight:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isKeyGuard:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isShadeLocked:Z

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 2171
    const/4 v0, 0x0

    .line 2172
    .local v0, "bottomMargin":I
    const/4 v2, 0x0

    .line 2173
    .local v2, "topMargin":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->isSingleLine()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2174
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2175
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2176
    .local v1, "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$carrierLabelHeight:I

    sub-int v0, v5, v6

    .line 2180
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$carrierLabelHeight:I

    add-int v2, v0, v5

    .line 2181
    invoke-virtual {v1, v4, v2, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2182
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2183
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isKeyGuard:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isKeyGuard:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isShadeLocked:Z

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2187
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setPressed(Z)V

    .line 2188
    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClearAll.setVisibility - mIsFullyOpened : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isKeyGuard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isKeyGuard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsDetailviewMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDetailviewMode:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mHasNotification : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mStatusBar.isBouncerShowing() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isShadeLocked : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isShadeLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mClearAllVisible : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    .end local v1    # "marginParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :goto_0
    return-void

    .line 2192
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2194
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$carrierLabelHeight:I

    sub-int v0, v5, v6

    .line 2203
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v4, v4, v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 2204
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2205
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isKeyGuard:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;->val$isShadeLocked:Z

    if-eqz v6, :cond_7

    :cond_6
    move v3, v4

    :cond_7
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

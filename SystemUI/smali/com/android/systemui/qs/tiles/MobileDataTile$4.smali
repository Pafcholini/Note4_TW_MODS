.class Lcom/android/systemui/qs/tiles/MobileDataTile$4;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "intentAction":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 182
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mSettingAirplane:Lcom/android/systemui/qs/GlobalSetting;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$400(Lcom/android/systemui/qs/tiles/MobileDataTile;)Lcom/android/systemui/qs/GlobalSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/GlobalSetting;->getValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v4, v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$002(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$102(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 185
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$600(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$700(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    .line 234
    :cond_0
    :goto_1
    return-void

    .line 182
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$900(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto :goto_1

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2

    .line 192
    :cond_5
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 195
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getMobileData()Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    # setter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$102(Lcom/android/systemui/qs/tiles/MobileDataTile;Z)Z

    .line 197
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->isMSim()Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 198
    const-string v1, "MobileDataTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_STATE_CHANGED : MSIM enabledsim # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I
    invoke-static {v5}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1200(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->getReadySimCount()I
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1300(Lcom/android/systemui/qs/tiles/MobileDataTile;)I

    move-result v1

    if-nez v1, :cond_7

    .line 201
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1400(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 203
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1500(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 206
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1600(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    move v2, v3

    goto :goto_3

    .line 211
    :cond_a
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eq v1, v2, :cond_b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-nez v1, :cond_c

    .line 213
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1700(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 215
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->isAirPlaneMode:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 216
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1800(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 218
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mMobileData:Z
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$100(Lcom/android/systemui/qs/tiles/MobileDataTile;)Z

    move-result v4

    if-eqz v4, :cond_e

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$1900(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_e
    move v2, v3

    goto :goto_4

    .line 223
    :cond_f
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 225
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # getter for: Lcom/android/systemui/qs/tiles/MobileDataTile;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2000(Lcom/android/systemui/qs/tiles/MobileDataTile;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    goto/16 :goto_1

    .line 230
    :cond_10
    const-string v1, "android.net.conn.MOBILE_DATA_ENABLE_POPUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string v1, "MobileDataTile"

    const-string v2, "onReceive: ACTION_MOBILE_DATA_ENABLE_POPUP"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$4;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    # invokes: Lcom/android/systemui/qs/tiles/MobileDataTile;->onDisplayMobileDataOnAlert()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/MobileDataTile;->access$2100(Lcom/android/systemui/qs/tiles/MobileDataTile;)V

    goto/16 :goto_1
.end method

.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Host$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0

    .prologue
    .line 1347
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->val$qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTilesChanged()V
    .locals 2

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->val$qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setEditMode(Z)V

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->val$qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getTiles()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setTiles(Ljava/util/Collection;)V

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;->val$qsh:Lcom/android/systemui/statusbar/phone/QSTileHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setEditMode(Z)V

    .line 1353
    return-void
.end method

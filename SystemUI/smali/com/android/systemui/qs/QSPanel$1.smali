.class Lcom/android/systemui/qs/QSPanel$1;
.super Ljava/lang/Object;
.source "QSPanel.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSPanel;

.field final synthetic val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnnouncementRequested(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "announcement"    # Ljava/lang/CharSequence;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 385
    return-void
.end method

.method public onScanStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iput-boolean p1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    .line 377
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    # invokes: Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSPanel;->access$800(Lcom/android/systemui/qs/QSPanel;Z)V

    .line 380
    :cond_0
    return-void
.end method

.method public onShowDetail(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    # invokes: Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    invoke-static {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->access$500(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 367
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 3
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 354
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 355
    .local v0, "visibility":I
    :goto_0
    iget-boolean v1, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z
    invoke-static {v1}, Lcom/android/systemui/qs/QSPanel;->access$300(Lcom/android/systemui/qs/QSPanel;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const/4 v0, 0x4

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v2, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    # invokes: Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V
    invoke-static {v1, v2, v0}, Lcom/android/systemui/qs/QSPanel;->access$400(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V

    .line 362
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 363
    return-void

    .line 354
    .end local v0    # "visibility":I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onToggleStateChanged(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # getter for: Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;
    invoke-static {v0}, Lcom/android/systemui/qs/QSPanel;->access$600(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-ne v0, v1, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->this$0:Lcom/android/systemui/qs/QSPanel;

    # invokes: Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSPanel;->access$700(Lcom/android/systemui/qs/QSPanel;Z)V

    .line 373
    :cond_0
    return-void
.end method

.method public setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileView;->setTileFontSizeForApn(Lcom/android/systemui/qs/QSTile$State;)V

    .line 395
    return-void
.end method

.method public setTileViewSoundEffectsEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel$1;->val$r:Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v0, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSTileView;->setSoundEffectsEnabled(Z)V

    .line 390
    return-void
.end method

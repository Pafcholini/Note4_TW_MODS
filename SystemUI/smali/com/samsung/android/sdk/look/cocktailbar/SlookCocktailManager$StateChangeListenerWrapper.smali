.class Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;
.super Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
.source "SlookCocktailManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeListenerWrapper"
.end annotation


# instance fields
.field private mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

.field final synthetic this$0:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V
    .locals 1
    .param p2, "listener"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->this$0:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;-><init>()V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    .line 527
    iput-object p2, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    .line 528
    return-void
.end method


# virtual methods
.method public onCocktailBarBackgroundTypeChanged(I)V
    .locals 1
    .param p1, "bgType"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;->onBackgroundTypeChanged(I)V

    .line 546
    :cond_0
    return-void
.end method

.method public onCocktailBarPositionChanged(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 550
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;->onPositionChanged(I)V

    .line 553
    :cond_0
    return-void
.end method

.method public onCocktailBarVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;->onVisibilityChanged(I)V

    .line 539
    :cond_0
    return-void
.end method

.method public setOnStateChangeListener(Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    .prologue
    .line 531
    iput-object p1, p0, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$StateChangeListenerWrapper;->mOnStateChangeListener:Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$OnStateChangeListener;

    .line 532
    return-void
.end method

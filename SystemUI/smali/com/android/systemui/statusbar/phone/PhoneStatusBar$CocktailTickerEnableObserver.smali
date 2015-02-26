.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CocktailTickerEnableObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 6656
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 6657
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6658
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 6662
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 6663
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6664
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "cocktail_bar_tickers_enabled"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v6

    invoke-static {v1, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z
    invoke-static {v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6667
    const-string v1, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCocktailTickerEnablebySettings.onChange() - DB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6668
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const v4, 0x7f0b002a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/Feature;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$CocktailTickerEnableObserver;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCocktailTickerEnablebySettings:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    :goto_1
    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6669
    return-void

    :cond_1
    move v1, v3

    .line 6664
    goto :goto_0

    :cond_2
    move v2, v3

    .line 6668
    goto :goto_1
.end method

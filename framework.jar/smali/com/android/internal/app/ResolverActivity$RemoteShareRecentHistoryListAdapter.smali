.class final Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareRecentHistoryListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mRemoteShareRecentHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I

    .prologue
    .line 2312
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2313
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    .line 2314
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2315
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 2316
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;

    .line 2319
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040481

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2320
    return-void
.end method

.method static synthetic access$3200(Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    .prologue
    const v7, 0x10204a2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2351
    const v4, 0x1020014

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2352
    .local v1, "text":Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2353
    .local v2, "text2":Landroid/widget/TextView;
    const v4, 0x10204a3

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2355
    .local v3, "text3":Landroid/widget/TextView;
    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    if-nez v4, :cond_0

    .line 2356
    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2357
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2358
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2359
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2368
    :goto_0
    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 2369
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2370
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2376
    :goto_1
    return-void

    .line 2361
    .end local v0    # "icon":Landroid/widget/ImageView;
    :cond_0
    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2362
    iget-object v4, p2, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2363
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2364
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2365
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2372
    :cond_1
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2373
    .restart local v0    # "icon":Landroid/widget/ImageView;
    const v4, 0x1080b45

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 2329
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 2334
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2340
    if-nez p2, :cond_0

    .line 2341
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1090141

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 2346
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->mRemoteShareRecentHistoryList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;)V

    .line 2348
    return-object v0

    .line 2343
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

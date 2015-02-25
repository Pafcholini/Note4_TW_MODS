.class Landroid/widget/AbsHorizontalListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsHorizontalListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsHorizontalListView;)V
    .locals 1

    .prologue
    .line 7829
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7843
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsHorizontalListView$RecycleBin;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;

    .prologue
    .line 7829
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4502(Landroid/widget/AbsHorizontalListView$RecycleBin;Landroid/widget/AbsHorizontalListView$RecyclerListener;)Landroid/widget/AbsHorizontalListView$RecyclerListener;
    .locals 0
    .param p0, "x0"    # Landroid/widget/AbsHorizontalListView$RecycleBin;
    .param p1, "x1"    # Landroid/widget/AbsHorizontalListView$RecyclerListener;

    .prologue
    .line 7829
    iput-object p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    return-object p1
.end method

.method private pruneScrapViews()V
    .locals 13

    .prologue
    .line 8182
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v3, v10

    .line 8183
    .local v3, "maxViews":I
    iget v9, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8184
    .local v9, "viewTypeCount":I
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8185
    .local v5, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v9, :cond_1

    .line 8186
    aget-object v4, v5, v1

    .line 8187
    .local v4, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 8188
    .local v6, "size":I
    sub-int v0, v6, v3

    .line 8189
    .local v0, "extras":I
    add-int/lit8 v6, v6, -0x1

    .line 8190
    const/4 v2, 0x0

    .local v2, "j":I
    move v7, v6

    .end local v6    # "size":I
    .local v7, "size":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 8191
    iget-object v11, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v6, v7, -0x1

    .end local v7    # "size":I
    .restart local v6    # "size":I
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    const/4 v12, 0x0

    invoke-static {v11, v10, v12}, Landroid/widget/AbsHorizontalListView;->access$5200(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8190
    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6    # "size":I
    .restart local v7    # "size":I
    goto :goto_1

    .line 8185
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8195
    .end local v0    # "extras":I
    .end local v2    # "j":I
    .end local v4    # "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "size":I
    :cond_1
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v10, :cond_3

    .line 8196
    const/4 v1, 0x0

    :goto_2
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_3

    .line 8197
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8198
    .local v8, "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_2

    .line 8199
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 8200
    add-int/lit8 v1, v1, -0x1

    .line 8196
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 8204
    .end local v8    # "v":Landroid/view/View;
    :cond_3
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v10, :cond_5

    .line 8205
    const/4 v1, 0x0

    :goto_3
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    .line 8206
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 8207
    .restart local v8    # "v":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    if-nez v10, :cond_4

    .line 8208
    iget-object v10, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v10, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 8209
    add-int/lit8 v1, v1, -0x1

    .line 8205
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 8213
    .end local v8    # "v":Landroid/view/View;
    :cond_5
    return-void
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6
    .param p1, "scrap"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 8036
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 8037
    .local v0, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-nez v0, :cond_1

    .line 8101
    :cond_0
    :goto_0
    return-void

    .line 8041
    :cond_1
    iput p2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 8045
    iget v2, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 8046
    .local v2, "viewType":I
    invoke-virtual {p0, v2}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8050
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8056
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v3, v4}, Landroid/widget/AbsHorizontalListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    .line 8060
    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    .line 8061
    .local v1, "scrapHasTransientState":Z
    if-eqz v1, :cond_7

    .line 8062
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_3

    .line 8065
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_2

    .line 8066
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8068
    :cond_2
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsHorizontalListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0

    .line 8069
    :cond_3
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v3, v3, Landroid/widget/AbsHorizontalListView;->mDataChanged:Z

    if-nez v3, :cond_5

    .line 8072
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_4

    .line 8073
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8075
    :cond_4
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 8078
    :cond_5
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 8079
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    .line 8081
    :cond_6
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8084
    :cond_7
    iget v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    if-ne v3, v4, :cond_9

    .line 8085
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8091
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 8092
    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 8095
    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8097
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v3, :cond_0

    .line 8098
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_0

    .line 8087
    :cond_9
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method clear()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 7912
    iget v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 7913
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7914
    .local v2, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7915
    .local v3, "scrapCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 7916
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$4800(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7915
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7919
    .end local v0    # "i":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    :cond_0
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7920
    .local v4, "typeCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 7921
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v5, v0

    .line 7922
    .restart local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 7923
    .restart local v3    # "scrapCount":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    if-ge v1, v3, :cond_1

    .line 7924
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    add-int/lit8 v5, v3, -0x1

    sub-int/2addr v5, v1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-static {v6, v5, v7}, Landroid/widget/AbsHorizontalListView;->access$4900(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 7923
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7920
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7928
    .end local v1    # "j":I
    .end local v2    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "scrapCount":I
    .end local v4    # "typeCount":I
    :cond_2
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v5, :cond_3

    .line 7929
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 7931
    :cond_3
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_4

    .line 7932
    iget-object v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v5}, Landroid/util/LongSparseArray;->clear()V

    .line 7934
    :cond_4
    return-void
.end method

.method clearTransientStateViews()V
    .locals 1

    .prologue
    .line 8003
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 8004
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 8006
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_1

    .line 8007
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 8009
    :cond_1
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6
    .param p1, "childCount"    # I
    .param p2, "firstActivePosition"    # I

    .prologue
    .line 7944
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v4, v4

    if-ge v4, p1, :cond_0

    .line 7945
    new-array v4, p1, [Landroid/view/View;

    iput-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7947
    :cond_0
    iput p2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    .line 7950
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7951
    .local v0, "activeViews":[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 7952
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    invoke-virtual {v4, v2}, Landroid/widget/AbsHorizontalListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 7953
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 7955
    .local v3, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    .line 7958
    aput-object v1, v0, v2

    .line 7951
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7961
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 7971
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    sub-int v1, p1, v4

    .line 7972
    .local v1, "index":I
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 7973
    .local v0, "activeViews":[Landroid/view/View;
    if-ltz v1, :cond_0

    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 7974
    aget-object v2, v0, v1

    .line 7975
    .local v2, "match":Landroid/view/View;
    aput-object v3, v0, v1

    .line 7978
    .end local v2    # "match":Landroid/view/View;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 8015
    iget v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 8016
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    .line 8023
    :goto_0
    return-object v1

    .line 8018
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v1, v1, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 8019
    .local v0, "whichScrap":I
    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8020
    iget-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-static {v1, p1}, Landroid/widget/AbsHorizontalListView;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 8023
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 7982
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v4, :cond_0

    .line 7983
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v4, v4, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 7984
    .local v0, "id":J
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7985
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 7996
    .end local v0    # "id":J
    .end local v3    # "result":Landroid/view/View;
    :goto_0
    return-object v3

    .line 7988
    :cond_0
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_1

    .line 7989
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 7990
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 7991
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 7992
    .restart local v3    # "result":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 7996
    .end local v2    # "index":I
    .end local v3    # "result":Landroid/view/View;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public markChildrenDirty()V
    .locals 8

    .prologue
    .line 7874
    iget v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 7875
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7876
    .local v3, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7877
    .local v4, "scrapCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 7878
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7877
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7881
    .end local v1    # "i":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    :cond_0
    iget v5, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7882
    .local v5, "typeCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_2

    .line 7883
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v6, v1

    .line 7884
    .restart local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 7885
    .restart local v4    # "scrapCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 7886
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7885
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 7882
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7890
    .end local v2    # "j":I
    .end local v3    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "scrapCount":I
    .end local v5    # "typeCount":I
    :cond_2
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v6, :cond_3

    .line 7891
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 7892
    .local v0, "count":I
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_3

    .line 7893
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7892
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 7896
    .end local v0    # "count":I
    :cond_3
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v6, :cond_4

    .line 7897
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    .line 7898
    .restart local v0    # "count":I
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 7899
    iget-object v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v6, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    .line 7898
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7902
    .end local v0    # "count":I
    :cond_4
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 8219
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 8220
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8229
    :cond_0
    return-void

    .line 8222
    :cond_1
    iget v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8223
    .local v3, "viewTypeCount":I
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 8224
    .local v2, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 8225
    aget-object v1, v2, v0

    .line 8226
    .local v1, "scrapPile":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method removeSkippedScrap()V
    .locals 5

    .prologue
    .line 8107
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 8115
    :goto_0
    return-void

    .line 8110
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 8111
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 8112
    iget-object v3, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/widget/AbsHorizontalListView;->access$5000(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8114
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method scrapActiveViews()V
    .locals 14

    .prologue
    .line 8121
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8122
    .local v0, "activeViews":[Landroid/view/View;
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    .line 8123
    .local v2, "hasListener":Z
    :goto_0
    iget v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v13, 0x1

    if-le v12, v13, :cond_5

    const/4 v7, 0x1

    .line 8125
    .local v7, "multipleScraps":Z
    :goto_1
    iget-object v9, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8126
    .local v9, "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    array-length v1, v0

    .line 8127
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_a

    .line 8128
    aget-object v10, v0, v3

    .line 8129
    .local v10, "victim":Landroid/view/View;
    if-eqz v10, :cond_3

    .line 8130
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsHorizontalListView$LayoutParams;

    .line 8132
    .local v6, "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    iget v11, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->viewType:I

    .line 8134
    .local v11, "whichScrap":I
    const/4 v12, 0x0

    aput-object v12, v0, v3

    .line 8136
    invoke-virtual {v10}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    .line 8137
    .local v8, "scrapHasTransientState":Z
    invoke-virtual {p0, v11}, Landroid/widget/AbsHorizontalListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v12

    if-eqz v12, :cond_0

    if-eqz v8, :cond_8

    .line 8139
    :cond_0
    const/4 v12, -0x2

    if-eq v11, v12, :cond_1

    if-eqz v8, :cond_1

    .line 8141
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    const/4 v13, 0x0

    invoke-static {v12, v10, v13}, Landroid/widget/AbsHorizontalListView;->access$5100(Landroid/widget/AbsHorizontalListView;Landroid/view/View;Z)V

    .line 8143
    :cond_1
    if-eqz v8, :cond_3

    .line 8144
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v12, :cond_6

    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-boolean v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_6

    .line 8145
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v12, :cond_2

    .line 8146
    new-instance v12, Landroid/util/LongSparseArray;

    invoke-direct {v12}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    .line 8148
    :cond_2
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->this$0:Landroid/widget/AbsHorizontalListView;

    iget-object v12, v12, Landroid/widget/AbsHorizontalListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v13, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-interface {v12, v13}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 8149
    .local v4, "id":J
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v4, v5, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 8127
    .end local v4    # "id":J
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v11    # "whichScrap":I
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 8122
    .end local v1    # "count":I
    .end local v2    # "hasListener":Z
    .end local v3    # "i":I
    .end local v7    # "multipleScraps":Z
    .end local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "victim":Landroid/view/View;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 8123
    .restart local v2    # "hasListener":Z
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 8151
    .restart local v1    # "count":I
    .restart local v3    # "i":I
    .restart local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .restart local v7    # "multipleScraps":Z
    .restart local v8    # "scrapHasTransientState":Z
    .restart local v9    # "scrapViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v10    # "victim":Landroid/view/View;
    .restart local v11    # "whichScrap":I
    :cond_6
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v12, :cond_7

    .line 8152
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    .line 8154
    :cond_7
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v13, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v13, v3

    invoke-virtual {v12, v13, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 8160
    :cond_8
    if-eqz v7, :cond_9

    .line 8161
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v9, v12, v11

    .line 8163
    :cond_9
    invoke-virtual {v10}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 8164
    iget v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v12, v3

    iput v12, v6, Landroid/widget/AbsHorizontalListView$LayoutParams;->scrappedFromPosition:I

    .line 8165
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8167
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 8168
    if-eqz v2, :cond_3

    .line 8169
    iget-object v12, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsHorizontalListView$RecyclerListener;

    invoke-interface {v12, v10}, Landroid/widget/AbsHorizontalListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    goto :goto_3

    .line 8174
    .end local v6    # "lp":Landroid/widget/AbsHorizontalListView$LayoutParams;
    .end local v8    # "scrapHasTransientState":Z
    .end local v10    # "victim":Landroid/view/View;
    .end local v11    # "whichScrap":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsHorizontalListView$RecycleBin;->pruneScrapViews()V

    .line 8175
    return-void
.end method

.method setCacheColorHint(I)V
    .locals 10
    .param p1, "color"    # I

    .prologue
    .line 8237
    iget v8, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 8238
    iget-object v4, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 8239
    .local v4, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8240
    .local v5, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 8241
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8240
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8244
    .end local v2    # "i":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    :cond_0
    iget v6, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 8245
    .local v6, "typeCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 8246
    iget-object v8, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v8, v2

    .line 8247
    .restart local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8248
    .restart local v5    # "scrapCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v5, :cond_1

    .line 8249
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8248
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 8245
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 8254
    .end local v3    # "j":I
    .end local v4    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "scrapCount":I
    .end local v6    # "typeCount":I
    :cond_2
    iget-object v0, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    .line 8255
    .local v0, "activeViews":[Landroid/view/View;
    array-length v1, v0

    .line 8256
    .local v1, "count":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_4

    .line 8257
    aget-object v7, v0, v2

    .line 8258
    .local v7, "victim":Landroid/view/View;
    if-eqz v7, :cond_3

    .line 8259
    invoke-virtual {v7, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 8256
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8262
    .end local v7    # "victim":Landroid/view/View;
    :cond_4
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4
    .param p1, "viewTypeCount"    # I

    .prologue
    .line 7860
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 7861
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 7864
    :cond_0
    new-array v1, p1, [Ljava/util/ArrayList;

    .line 7865
    .local v1, "scrapViews":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 7866
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 7865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7868
    :cond_1
    iput p1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mViewTypeCount:I

    .line 7869
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    .line 7870
    iput-object v1, p0, Landroid/widget/AbsHorizontalListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    .line 7871
    return-void
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 7905
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

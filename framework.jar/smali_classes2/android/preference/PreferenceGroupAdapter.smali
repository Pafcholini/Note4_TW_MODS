.class public Landroid/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PreferenceGroupAdapter"

.field private static sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mCntPreferenceCategory:I

.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightedPosition:I

.field private volatile mIsSyncing:Z

.field private mLastPreference:Landroid/preference/Preference;

.field private mPreferenceGroup:Landroid/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

.field public mTwNeedPaddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/preference/PreferenceGroup;)V
    .locals 3
    .param p1, "preferenceGroup"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {v0, v2}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$1;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 84
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 86
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 88
    iput v1, p0, Landroid/preference/PreferenceGroupAdapter;->mCntPreferenceCategory:I

    .line 93
    iput v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    .line 94
    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mLastPreference:Landroid/preference/Preference;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter$1;-><init>(Landroid/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 134
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    .line 136
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    .line 141
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    .line 142
    return-void
.end method

.method static synthetic access$100(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p0, "x0"    # Landroid/preference/PreferenceGroupAdapter;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Landroid/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 233
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    .line 234
    .local v1, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    .line 237
    .local v0, "insertPos":I
    if-gez v0, :cond_0

    .line 239
    mul-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    .line 240
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 242
    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "in"    # Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .prologue
    .line 225
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 226
    .local v0, "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    # setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v1

    # setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 228
    invoke-virtual {p1}, Landroid/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    # setter for: Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I
    invoke-static {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;->access$402(Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    .line 229
    return-object v0

    .line 225
    .end local v0    # "pl":Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;
    :cond_0
    new-instance v0, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Landroid/preference/PreferenceGroupAdapter$1;)V

    goto :goto_0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V
    .locals 8
    .param p2, "group"    # Landroid/preference/PreferenceGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/Preference;",
            ">;",
            "Landroid/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 172
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->sortPreferences()V

    .line 174
    invoke-virtual {p2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 175
    .local v0, "groupSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_6

    .line 176
    invoke-virtual {p2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 178
    .local v2, "preference":Landroid/preference/Preference;
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Landroid/preference/Preference;->mIsDeviceDefault:Z

    if-eqz v4, :cond_2

    .line 182
    instance-of v4, v2, Landroid/preference/PreferenceCategory;

    if-eqz v4, :cond_5

    .line 183
    iget v4, p0, Landroid/preference/PreferenceGroupAdapter;->mCntPreferenceCategory:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/preference/PreferenceGroupAdapter;->mCntPreferenceCategory:I

    .line 184
    iput-boolean v7, v2, Landroid/preference/Preference;->mIsPreferenceCategory:Z

    .line 186
    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mLastPreference:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 187
    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mLastPreference:Landroid/preference/Preference;

    iput-boolean v7, v4, Landroid/preference/Preference;->mNeedPaddingBottom:Z

    .line 190
    :cond_0
    if-nez v1, :cond_1

    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mLastPreference:Landroid/preference/Preference;

    if-nez v4, :cond_1

    .line 191
    iput v6, p0, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    .line 192
    invoke-virtual {v2}, Landroid/preference/Preference;->getLayoutResource()I

    move-result v4

    const v5, 0x1090123

    if-ne v4, v5, :cond_1

    .line 193
    const v4, 0x1090124

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setLayoutResourceInternal(I)V

    .line 201
    :cond_1
    :goto_1
    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mLastPreference:Landroid/preference/Preference;

    .line 204
    :cond_2
    iget-boolean v4, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v4, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/preference/Preference;->canRecycleLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 205
    invoke-direct {p0, v2}, Landroid/preference/PreferenceGroupAdapter;->addPreferenceClassName(Landroid/preference/Preference;)V

    .line 208
    :cond_3
    instance-of v4, v2, Landroid/preference/PreferenceGroup;

    if-eqz v4, :cond_4

    move-object v3, v2

    .line 209
    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 210
    .local v3, "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    invoke-direct {p0, p1, v3}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 215
    .end local v3    # "preferenceAsGroup":Landroid/preference/PreferenceGroup;
    :cond_4
    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeInternalListener(Landroid/preference/Preference$OnPreferenceChangeInternalListener;)V

    .line 175
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_5
    iput-boolean v6, v2, Landroid/preference/Preference;->mIsPreferenceCategory:Z

    .line 198
    iput-boolean v6, v2, Landroid/preference/Preference;->mNeedPaddingBottom:Z

    goto :goto_1

    .line 217
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_6
    return-void
.end method

.method private getHighlightItemViewType()I
    .locals 1

    .prologue
    .line 338
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private syncMyPreferences()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 145
    monitor-enter p0

    .line 146
    :try_start_0
    iget-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v2, :cond_0

    .line 147
    monitor-exit p0

    .line 168
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    iput v1, p0, Landroid/preference/PreferenceGroupAdapter;->mCntPreferenceCategory:I

    .line 154
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mLastPreference:Landroid/preference/Preference;

    .line 155
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    iput v1, p0, Landroid/preference/PreferenceGroupAdapter;->mTwNeedPaddingTop:I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 159
    .local v0, "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Landroid/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Landroid/preference/PreferenceGroup;)V

    .line 160
    iput-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    .line 162
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 164
    monitor-enter p0

    .line 165
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    .line 166
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 167
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 151
    .end local v0    # "newPreferenceList":Ljava/util/List;, "Ljava/util/List<Landroid/preference/Preference;>;"
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 155
    :cond_2
    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    iget-boolean v2, v2, Landroid/preference/PreferenceGroup;->mIsDeviceDefault:Z

    if-eqz v2, :cond_1

    const/high16 v1, 0x41000000    # 8.0f

    iget-object v2, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->twGetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 249
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 254
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 255
    :goto_0
    return-wide v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->getId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v2, -0x1

    .line 343
    iget v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v3, :cond_1

    .line 344
    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v1

    .line 364
    :cond_0
    :goto_0
    return v1

    .line 347
    :cond_1
    iget-boolean v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_2

    .line 348
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 351
    :cond_2
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 352
    .local v0, "preference":Landroid/preference/Preference;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/Preference;->canRecycleLayout()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    .line 353
    goto :goto_0

    .line 356
    :cond_4
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 358
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 359
    .local v1, "viewType":I
    if-gez v1, :cond_0

    move v1, v2

    .line 362
    goto :goto_0
.end method

.method public getPreferenceCategoryCnt()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Landroid/preference/PreferenceGroupAdapter;->mCntPreferenceCategory:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 273
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    .line 274
    .local v0, "preference":Landroid/preference/Preference;
    if-nez v0, :cond_1

    move-object v1, p2

    .line 292
    :cond_0
    :goto_0
    return-object v1

    .line 276
    :cond_1
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v3}, Landroid/preference/PreferenceGroupAdapter;->createPreferenceLayout(Landroid/preference/Preference;Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;)Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v3

    iput-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    .line 280
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Landroid/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v3, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItemViewType(I)I

    move-result v3

    invoke-direct {p0}, Landroid/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 282
    :cond_2
    const/4 p2, 0x0

    .line 284
    :cond_3
    invoke-virtual {v0, p2, p3}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, "result":Landroid/view/View;
    iget v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 286
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 287
    .local v2, "wrapper":Landroid/view/ViewGroup;
    sget-object v3, Landroid/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object v3, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 290
    move-object v1, v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 370
    iget-boolean v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_0

    .line 371
    iput-boolean v1, p0, Landroid/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    .line 374
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 297
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 298
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/Preference;->isSelectable()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreferenceCategory(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 312
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 313
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceCategory;

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    .line 325
    return-void
.end method

.method public onPreferenceHierarchyChange(Landroid/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 328
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return-void
.end method

.method public setHighlighted(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 262
    iput p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    .line 263
    return-void
.end method

.method public setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 269
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    .line 270
    return-void
.end method

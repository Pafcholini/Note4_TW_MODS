.class final Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoteShareRecentHistoryListInfo"
.end annotation


# instance fields
.field deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field extraInfo:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "pInitText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 2283
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2284
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2285
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 2286
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2287
    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2288
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pExtraInfo"    # Ljava/lang/CharSequence;

    .prologue
    .line 2290
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2291
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2292
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2293
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 2294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2295
    return-void
.end method

.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;)V
    .locals 0
    .param p2, "pLabel"    # Ljava/lang/CharSequence;
    .param p3, "pIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pExtraInfo"    # Ljava/lang/CharSequence;
    .param p5, "pDeviceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .prologue
    .line 2297
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2298
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 2299
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 2300
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->extraInfo:Ljava/lang/CharSequence;

    .line 2301
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$RemoteShareRecentHistoryListInfo;->deviceInfo:Lcom/android/internal/app/ResolverActivity$DisplayDeviceInfo;

    .line 2302
    return-void
.end method

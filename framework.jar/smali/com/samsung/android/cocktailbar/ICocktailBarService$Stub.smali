.class public abstract Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;
.super Landroid/os/Binder;
.source "ICocktailBarService.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/ICocktailBarService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/ICocktailBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cocktailbar.ICocktailBarService"

.field static final TRANSACTION_activateCocktailBar:I = 0x26

.field static final TRANSACTION_bindRemoteViewsService:I = 0xf

.field static final TRANSACTION_closeCocktail:I = 0xa

.field static final TRANSACTION_cocktailBarreboot:I = 0x36

.field static final TRANSACTION_cocktailBarshutdown:I = 0x35

.field static final TRANSACTION_deactivateCocktailBar:I = 0x27

.field static final TRANSACTION_getAllCocktailIds:I = 0x5

.field static final TRANSACTION_getCocktaiBarWakeUpState:I = 0x2f

.field static final TRANSACTION_getCocktail:I = 0x6

.field static final TRANSACTION_getCocktailBarVisibility:I = 0x24

.field static final TRANSACTION_getCocktailId:I = 0xb

.field static final TRANSACTION_getCocktailIds:I = 0xc

.field static final TRANSACTION_getEnabledCocktailIds:I = 0x4

.field static final TRANSACTION_getWindowType:I = 0x25

.field static final TRANSACTION_isAllowTransientBarCocktailBar:I = 0x32

.field static final TRANSACTION_notifyCocktailViewDataChanged:I = 0xd

.field static final TRANSACTION_notifyCocktailVisibiltyChanged:I = 0x18

.field static final TRANSACTION_notifyKeyguardState:I = 0x17

.field static final TRANSACTION_onScreenTurnedOn:I = 0x30

.field static final TRANSACTION_partiallyUpdateCocktail:I = 0x8

.field static final TRANSACTION_registerCocktailBarFeedsListenerCallback:I = 0x22

.field static final TRANSACTION_registerCocktailBarStateListenerCallback:I = 0x20

.field static final TRANSACTION_removeCocktailUIService:I = 0x34

.field static final TRANSACTION_requestToDisableCocktail:I = 0x12

.field static final TRANSACTION_requestToDisableCocktailByCategory:I = 0x14

.field static final TRANSACTION_requestToDisableCocktailByPrivateMode:I = 0x16

.field static final TRANSACTION_requestToUpdateCocktail:I = 0x11

.field static final TRANSACTION_requestToUpdateCocktailByCategory:I = 0x13

.field static final TRANSACTION_requestToUpdateCocktailByPrivateMode:I = 0x15

.field static final TRANSACTION_sendDragEvent:I = 0x19

.field static final TRANSACTION_sendExtraDataToCocktailBar:I = 0x33

.field static final TRANSACTION_setCocktailBarStatus:I = 0x1f

.field static final TRANSACTION_setCocktailHostCallbacks:I = 0x1

.field static final TRANSACTION_setDisableTickerView:I = 0x28

.field static final TRANSACTION_setEnabledCocktailIds:I = 0x3

.field static final TRANSACTION_showAndLockCocktailBar:I = 0x1a

.field static final TRANSACTION_showCocktail:I = 0x9

.field static final TRANSACTION_startListening:I = 0x2

.field static final TRANSACTION_switchDefaultCocktail:I = 0x31

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x10

.field static final TRANSACTION_unlockCocktailBar:I = 0x1b

.field static final TRANSACTION_unregisterCocktailBarFeedsListenerCallback:I = 0x23

.field static final TRANSACTION_unregisterCocktailBarStateListenerCallback:I = 0x21

.field static final TRANSACTION_updateCocktail:I = 0x7

.field static final TRANSACTION_updateCocktailBarPosition:I = 0x1e

.field static final TRANSACTION_updateCocktailBarStateFromSystem:I = 0x1d

.field static final TRANSACTION_updateCocktailBarVisibility:I = 0x1c

.field static final TRANSACTION_updateFeeds:I = 0xe

.field static final TRANSACTION_updateLongpressGesture:I = 0x2a

.field static final TRANSACTION_updateSysfsBarLength:I = 0x2c

.field static final TRANSACTION_updateSysfsDeadZone:I = 0x2b

.field static final TRANSACTION_updateSysfsGripDisable:I = 0x2d

.field static final TRANSACTION_updateWakeupGesture:I = 0x29

.field static final TRANSACTION_wakeupCocktailBar:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/samsung/android/cocktailbar/ICocktailBarService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 620
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 43
    :sswitch_0
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 52
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailHostCallbacks(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/cocktailbar/ICocktailHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailHost;

    move-result-object v0

    .line 63
    .restart local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 65
    .restart local v1    # "_arg1":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-virtual {p0, v0, v1, v4}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->startListening(Lcom/samsung/android/cocktailbar/ICocktailHost;Ljava/lang/String;Ljava/util/List;)[I

    move-result-object v6

    .line 67
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 69
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 74
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailHost;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    .end local v6    # "_result":[I
    :sswitch_3
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 77
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setEnabledCocktailIds([I)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 83
    .end local v0    # "_arg0":[I
    :sswitch_4
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getEnabledCocktailIds()[I

    move-result-object v6

    .line 85
    .restart local v6    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 91
    .end local v6    # "_result":[I
    :sswitch_5
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getAllCocktailIds()[I

    move-result-object v6

    .line 93
    .restart local v6    # "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_0

    .line 99
    .end local v6    # "_result":[I
    :sswitch_6
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktail(I)Lcom/samsung/android/cocktailbar/Cocktail;

    move-result-object v6

    .line 103
    .local v6, "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    invoke-virtual {v6, p3, v8}, Lcom/samsung/android/cocktailbar/Cocktail;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 109
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Lcom/samsung/android/cocktailbar/Cocktail;
    :sswitch_7
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 118
    sget-object v7, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 124
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 125
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktail(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    .end local v1    # "_arg1":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    goto :goto_1

    .line 131
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/CocktailInfo;
    :sswitch_8
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 134
    sget-object v7, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 140
    .local v0, "_arg0":Landroid/widget/RemoteViews;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->partiallyUpdateCocktail(Landroid/widget/RemoteViews;I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 137
    .end local v0    # "_arg0":Landroid/widget/RemoteViews;
    .end local v1    # "_arg1":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/widget/RemoteViews;
    goto :goto_2

    .line 147
    .end local v0    # "_arg0":Landroid/widget/RemoteViews;
    :sswitch_9
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showCocktail(I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 156
    .end local v0    # "_arg0":I
    :sswitch_a
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->closeCocktail(II)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 167
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_b
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3

    .line 170
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 175
    .local v0, "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailId(Landroid/content/ComponentName;)I

    move-result v6

    .line 176
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 173
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_result":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 182
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_c
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    .line 185
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 190
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v6

    .line 191
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_0

    .line 188
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v6    # "_result":[I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 197
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :sswitch_d
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailViewDataChanged(II)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 208
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_e
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 212
    .restart local v0    # "_arg0":I
    sget-object v7, Lcom/samsung/android/cocktailbar/FeedsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 213
    .local v2, "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateFeeds(ILjava/util/List;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/cocktailbar/FeedsInfo;>;"
    :sswitch_f
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 225
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_5

    .line 226
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 232
    .local v3, "_arg2":Landroid/content/Intent;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 233
    .local v5, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->bindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 234
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 229
    .end local v3    # "_arg2":Landroid/content/Intent;
    .end local v5    # "_arg3":Landroid/os/IBinder;
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/content/Intent;
    goto :goto_5

    .line 239
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    :sswitch_10
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 245
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 246
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 251
    .restart local v3    # "_arg2":Landroid/content/Intent;
    :goto_6
    invoke-virtual {p0, v0, v1, v3}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unbindRemoteViewsService(Ljava/lang/String;ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 249
    .end local v3    # "_arg2":Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/content/Intent;
    goto :goto_6

    .line 257
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v3    # "_arg2":Landroid/content/Intent;
    :sswitch_11
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 260
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktail(I)Z

    move-result v6

    .line 261
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    if-eqz v6, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 267
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_12
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktail(I)Z

    move-result v6

    .line 271
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    if-eqz v6, :cond_8

    move v7, v8

    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_13
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByCategory(I)Z

    move-result v6

    .line 281
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    if-eqz v6, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_14
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByCategory(I)Z

    move-result v6

    .line 291
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v6, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 297
    .end local v0    # "_arg0":I
    .end local v6    # "_result":Z
    :sswitch_15
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToUpdateCocktailByPrivateMode(Ljava/lang/String;)Z

    move-result v6

    .line 301
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v6, :cond_b

    move v7, v8

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 307
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_16
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 310
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->requestToDisableCocktailByPrivateMode(Ljava/lang/String;)Z

    move-result v6

    .line 311
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v6, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_17
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_d

    move v0, v8

    .line 320
    .local v0, "_arg0":Z
    :goto_7
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyKeyguardState(Z)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_d
    move v0, v7

    .line 319
    goto :goto_7

    .line 326
    :sswitch_18
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 331
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->notifyCocktailVisibiltyChanged(II)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_19
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 341
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    .line 342
    sget-object v7, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/DragEvent;

    .line 347
    .local v1, "_arg1":Landroid/view/DragEvent;
    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendDragEvent(ILandroid/view/DragEvent;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 345
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/view/DragEvent;
    goto :goto_8

    .line 353
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/DragEvent;
    :sswitch_1a
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->showAndLockCocktailBar()V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 360
    :sswitch_1b
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unlockCocktailBar(I)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 369
    .end local v0    # "_arg0":I
    :sswitch_1c
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 372
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarVisibility(I)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 378
    .end local v0    # "_arg0":I
    :sswitch_1d
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 381
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarStateFromSystem(I)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 387
    .end local v0    # "_arg0":I
    :sswitch_1e
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 390
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateCocktailBarPosition(I)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 396
    .end local v0    # "_arg0":I
    :sswitch_1f
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_f

    move v0, v8

    .line 400
    .local v0, "_arg0":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    move v1, v8

    .line 401
    .local v1, "_arg1":Z
    :goto_a
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setCocktailBarStatus(ZZ)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :cond_f
    move v0, v7

    .line 398
    goto :goto_9

    .restart local v0    # "_arg0":Z
    :cond_10
    move v1, v7

    .line 400
    goto :goto_a

    .line 407
    .end local v0    # "_arg0":Z
    :sswitch_20
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 411
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    .line 412
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 417
    .local v1, "_arg1":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 415
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_11
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b

    .line 423
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_21
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 426
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 432
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_22
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 436
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    .line 437
    sget-object v7, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 442
    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->registerCocktailBarFeedsListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 443
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 440
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :cond_12
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/content/ComponentName;
    goto :goto_c

    .line 448
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/ComponentName;
    :sswitch_23
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 451
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->unregisterCocktailBarFeedsListenerCallback(Landroid/os/IBinder;)V

    .line 452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :sswitch_24
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktailBarVisibility()I

    move-result v6

    .line 459
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 465
    .end local v6    # "_result":I
    :sswitch_25
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getWindowType()I

    move-result v6

    .line 467
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 473
    .end local v6    # "_result":I
    :sswitch_26
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->activateCocktailBar()V

    .line 475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 480
    :sswitch_27
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->deactivateCocktailBar()V

    .line 482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 487
    :sswitch_28
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 490
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->setDisableTickerView(I)V

    .line 491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 496
    .end local v0    # "_arg0":I
    :sswitch_29
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    move v1, v8

    .line 501
    .local v1, "_arg1":Z
    :goto_d
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateWakeupGesture(IZ)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    :cond_13
    move v1, v7

    .line 500
    goto :goto_d

    .line 507
    .end local v0    # "_arg0":I
    :sswitch_2a
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_14

    move v0, v8

    .line 510
    .local v0, "_arg0":Z
    :goto_e
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateLongpressGesture(Z)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_14
    move v0, v7

    .line 509
    goto :goto_e

    .line 516
    :sswitch_2b
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsDeadZone(I)V

    .line 520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 525
    .end local v0    # "_arg0":I
    :sswitch_2c
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsBarLength(I)V

    .line 529
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 534
    .end local v0    # "_arg0":I
    :sswitch_2d
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_15

    move v0, v8

    .line 537
    .local v0, "_arg0":Z
    :goto_f
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->updateSysfsGripDisable(Z)V

    .line 538
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_15
    move v0, v7

    .line 536
    goto :goto_f

    .line 543
    :sswitch_2e
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_16

    move v0, v8

    .line 547
    .restart local v0    # "_arg0":Z
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 548
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->wakeupCocktailBar(ZI)V

    .line 549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :cond_16
    move v0, v7

    .line 545
    goto :goto_10

    .line 554
    :sswitch_2f
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->getCocktaiBarWakeUpState()Z

    move-result v6

    .line 556
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    if-eqz v6, :cond_17

    move v7, v8

    :cond_17
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 562
    .end local v6    # "_result":Z
    :sswitch_30
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;

    move-result-object v0

    .line 565
    .local v0, "_arg0":Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->onScreenTurnedOn(Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;)V

    .line 566
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 571
    .end local v0    # "_arg0":Lcom/samsung/android/cocktailbar/ICocktailBarShowCallback;
    :sswitch_31
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->switchDefaultCocktail()V

    .line 573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 578
    :sswitch_32
    const-string v9, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->isAllowTransientBarCocktailBar()Z

    move-result v6

    .line 580
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    if-eqz v6, :cond_18

    move v7, v8

    :cond_18
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 586
    .end local v6    # "_result":Z
    :sswitch_33
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    .line 589
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 594
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->sendExtraDataToCocktailBar(Landroid/os/Bundle;)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 592
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_19
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_11

    .line 600
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_34
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->removeCocktailUIService()V

    .line 602
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 607
    :sswitch_35
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarshutdown()V

    .line 609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 614
    :sswitch_36
    const-string v7, "com.samsung.android.cocktailbar.ICocktailBarService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/cocktailbar/ICocktailBarService$Stub;->cocktailBarreboot()V

    .line 616
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Lcom/sec/android/emergencymode/IEmergencyManager$Stub;
.super Landroid/os/Binder;
.source "IEmergencyManager.java"

# interfaces
.implements Lcom/sec/android/emergencymode/IEmergencyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/emergencymode/IEmergencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/emergencymode/IEmergencyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sec.android.emergencymode.IEmergencyManager"

.field static final TRANSACTION_addAppToLauncher:I = 0xc

.field static final TRANSACTION_checkInvalidBroadcast:I = 0x5

.field static final TRANSACTION_checkInvalidProcess:I = 0x4

.field static final TRANSACTION_checkModeType:I = 0xd

.field static final TRANSACTION_checkValidIntentAction:I = 0x3

.field static final TRANSACTION_checkValidPackage:I = 0x2

.field static final TRANSACTION_getforceBlockUserPkg:I = 0x9

.field static final TRANSACTION_isEmergencyMode:I = 0x1

.field static final TRANSACTION_isModifying:I = 0xa

.field static final TRANSACTION_isScreenOn:I = 0x7

.field static final TRANSACTION_needMobileDataBlock:I = 0x6

.field static final TRANSACTION_setLocationProvider:I = 0xb

.field static final TRANSACTION_setforceBlockUserPkg:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/emergencymode/IEmergencyManager;
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
    const-string v1, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/emergencymode/IEmergencyManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/sec/android/emergencymode/IEmergencyManager;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/sec/android/emergencymode/IEmergencyManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 7
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 43
    :sswitch_0
    const-string v4, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->isEmergencyMode()Z

    move-result v3

    .line 50
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v3, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 56
    .end local v3    # "_result":Z
    :sswitch_2
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 63
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 64
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :sswitch_3
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 76
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_4
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v3

    .line 86
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v3, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 92
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_5
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkInvalidBroadcast(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 98
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v3, :cond_4

    move v4, v5

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 104
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v3    # "_result":Z
    :sswitch_6
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->needMobileDataBlock()Z

    move-result v3

    .line 106
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    if-eqz v3, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 112
    .end local v3    # "_result":Z
    :sswitch_7
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->isScreenOn()Z

    move-result v3

    .line 114
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v3, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 120
    .end local v3    # "_result":Z
    :sswitch_8
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    move v0, v5

    .line 123
    .local v0, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->setforceBlockUserPkg(Z)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_7
    move v0, v4

    .line 122
    goto :goto_1

    .line 129
    :sswitch_9
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->getforceBlockUserPkg()Z

    move-result v3

    .line 131
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v3, :cond_8

    move v4, v5

    :cond_8
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 137
    .end local v3    # "_result":Z
    :sswitch_a
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->isModifying()Z

    move-result v3

    .line 139
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    if-eqz v3, :cond_9

    move v4, v5

    :cond_9
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v3    # "_result":Z
    :sswitch_b
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v0, v5

    .line 148
    .restart local v0    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->setLocationProvider(Z)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_a
    move v0, v4

    .line 147
    goto :goto_2

    .line 154
    :sswitch_c
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    move v1, v5

    .line 159
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->addAppToLauncher(Ljava/lang/String;Z)Z

    move-result v3

    .line 160
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    if-eqz v3, :cond_b

    move v4, v5

    :cond_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v1    # "_arg1":Z
    .end local v3    # "_result":Z
    :cond_c
    move v1, v4

    .line 158
    goto :goto_3

    .line 166
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_d
    const-string v6, "com.sec.android.emergencymode.IEmergencyManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/sec/android/emergencymode/IEmergencyManager$Stub;->checkModeType(I)Z

    move-result v3

    .line 170
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    if-eqz v3, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

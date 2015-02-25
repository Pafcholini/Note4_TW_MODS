.class public abstract Landroid/os/storage/IDirEncryptService$Stub;
.super Landroid/os/Binder;
.source "IDirEncryptService.java"

# interfaces
.implements Landroid/os/storage/IDirEncryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IDirEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IDirEncryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IDirEncryptService"

.field static final TRANSACTION_SetMountSDcardToHelper:I = 0x2b

.field static final TRANSACTION_encryptStorage:I = 0x9

.field static final TRANSACTION_getAdditionalSpaceRequired:I = 0x8

.field static final TRANSACTION_getCurrentStatus:I = 0x6

.field static final TRANSACTION_getLastError:I = 0x7

.field static final TRANSACTION_getSDCardEncryptionPrefs:I = 0xa

.field static final TRANSACTION_isStorageCardEncryptionPoliciesApplied:I = 0x4

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setNeedToCreateKey:I = 0x2a

.field static final TRANSACTION_setNullSDCardPassword:I = 0x29

.field static final TRANSACTION_setPassword:I = 0x5

.field static final TRANSACTION_setStorageCardEncryptionPolicy:I = 0x3

.field static final TRANSACTION_unmountSDCardByAdmin:I = 0xb

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 324
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 325
    const-string v0, "IDirEncryptService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IDirEncryptService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 314
    const/4 v0, 0x0

    .line 320
    :goto_0
    return-object v0

    .line 316
    :cond_0
    const-string v1, "IDirEncryptService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 317
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IDirEncryptService;

    if-eqz v1, :cond_1

    .line 318
    check-cast v0, Landroid/os/storage/IDirEncryptService;

    goto :goto_0

    .line 320
    :cond_1
    new-instance v0, Landroid/os/storage/IDirEncryptService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/storage/IDirEncryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 329
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 336
    sparse-switch p1, :sswitch_data_0

    .line 460
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :cond_0
    :goto_0
    return v5

    .line 338
    :sswitch_0
    const-string v6, "IDirEncryptService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    :sswitch_1
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v2

    .line 345
    .local v2, "listener":Landroid/os/storage/IDirEncryptServiceListener;
    if-nez v2, :cond_1

    move v5, v1

    .line 346
    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/storage/IDirEncryptService$Stub;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 353
    .end local v2    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_2
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/storage/IDirEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptServiceListener;

    move-result-object v2

    .line 356
    .restart local v2    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    if-nez v2, :cond_2

    move v5, v1

    .line 357
    goto :goto_0

    .line 359
    :cond_2
    invoke-virtual {p0, v2}, Landroid/os/storage/IDirEncryptService$Stub;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 364
    .end local v2    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :sswitch_3
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Landroid/os/storage/IDirEncryptService$Stub;->setStorageCardEncryptionPolicy(III)I

    move-result v0

    .line 366
    .local v0, "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 371
    .end local v0    # "_resultCode":I
    :sswitch_4
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 373
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 379
    .end local v0    # "_resultCode":I
    :sswitch_5
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/storage/IDirEncryptService$Stub;->setPassword(Ljava/lang/String;)I

    move-result v0

    .line 381
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 387
    .end local v0    # "_resultCode":I
    :sswitch_6
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getCurrentStatus()I

    move-result v0

    .line 389
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 395
    .end local v0    # "_resultCode":I
    :sswitch_7
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getLastError()I

    move-result v0

    .line 397
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 403
    .end local v0    # "_resultCode":I
    :sswitch_8
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getAdditionalSpaceRequired()I

    move-result v0

    .line 405
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 411
    .end local v0    # "_resultCode":I
    :sswitch_9
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/os/storage/IDirEncryptService$Stub;->encryptStorage(Ljava/lang/String;)I

    move-result v0

    .line 413
    .restart local v0    # "_resultCode":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 419
    .end local v0    # "_resultCode":I
    :sswitch_a
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v3

    .line 421
    .local v3, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v3, :cond_0

    .line 423
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 424
    invoke-virtual {v3, p3, v5}, Landroid/dirEncryption/SDCardEncryptionPolicies;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 429
    .end local v3    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :sswitch_b
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->unmountSDCardByAdmin()V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 437
    :sswitch_c
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Landroid/os/storage/IDirEncryptService$Stub;->setNullSDCardPassword()I

    move-result v4

    .line 439
    .local v4, "result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 445
    .end local v4    # "result":I
    :sswitch_d
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_3

    move v1, v5

    .local v1, "in":Z
    :cond_3
    invoke-virtual {p0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->setNeedToCreateKey(Z)V

    .line 448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 453
    .end local v1    # "in":Z
    :sswitch_e
    const-string v6, "IDirEncryptService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-ne v6, v5, :cond_4

    move v1, v5

    .restart local v1    # "in":Z
    :cond_4
    invoke-virtual {p0, v1}, Landroid/os/storage/IDirEncryptService$Stub;->SetMountSDcardToHelper(Z)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 336
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
        0x29 -> :sswitch_c
        0x2a -> :sswitch_d
        0x2b -> :sswitch_e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

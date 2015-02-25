.class public abstract Landroid/location/IExerciseLocationProvider$Stub;
.super Landroid/os/Binder;
.source "IExerciseLocationProvider.java"

# interfaces
.implements Landroid/location/IExerciseLocationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/IExerciseLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IExerciseLocationProvider$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.location.IExerciseLocationProvider"

.field static final TRANSACTION_addExerciseLocationListener:I = 0x1

.field static final TRANSACTION_removeExerciseLocationListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "android.location.IExerciseLocationProvider"

    invoke-virtual {p0, p0, v0}, Landroid/location/IExerciseLocationProvider$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationProvider;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "android.location.IExerciseLocationProvider"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/IExerciseLocationProvider;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/location/IExerciseLocationProvider;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Landroid/location/IExerciseLocationProvider$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/location/IExerciseLocationProvider$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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
    const/4 v1, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 47
    :sswitch_0
    const-string v2, "android.location.IExerciseLocationProvider"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v2, "android.location.IExerciseLocationProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IExerciseLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationListener;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Landroid/location/IExerciseLocationListener;
    invoke-virtual {p0, v0}, Landroid/location/IExerciseLocationProvider$Stub;->addExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 61
    .end local v0    # "_arg0":Landroid/location/IExerciseLocationListener;
    :sswitch_2
    const-string v2, "android.location.IExerciseLocationProvider"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/location/IExerciseLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IExerciseLocationListener;

    move-result-object v0

    .line 64
    .restart local v0    # "_arg0":Landroid/location/IExerciseLocationListener;
    invoke-virtual {p0, v0}, Landroid/location/IExerciseLocationProvider$Stub;->removeExerciseLocationListener(Landroid/location/IExerciseLocationListener;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 43
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

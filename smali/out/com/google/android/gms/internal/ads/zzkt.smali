.class public abstract Lcom/google/android/gms/internal/ads/zzkt;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzks;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzks;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzks;

    if-eqz v1, :cond_11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzks;

    return-object v0

    :cond_11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzku;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzku;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p4, 0x0

    packed-switch p1, :pswitch_data_19c

    :pswitch_4
    const/4 p1, 0x0

    return p1

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzba()Landroid/os/Bundle;

    move-result-object p1

    goto/16 :goto_117

    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_13

    goto :goto_26

    :cond_13
    const-string p2, "com.google.android.gms.ads.internal.client.IAdMetadataListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzkx;

    if-eqz p4, :cond_21

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzkx;

    goto :goto_26

    :cond_21
    new-instance p4, Lcom/google/android/gms/internal/ads/zzkz;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzkz;-><init>(Landroid/os/IBinder;)V

    :goto_26
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzkx;)V

    goto/16 :goto_18c

    :pswitch_2b
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzck()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_e0

    :pswitch_31
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->setImmersiveMode(Z)V

    goto/16 :goto_18c

    :pswitch_3a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzbx()Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p1

    goto/16 :goto_194

    :pswitch_40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzbw()Lcom/google/android/gms/internal/ads/zzla;

    move-result-object p1

    goto/16 :goto_194

    :pswitch_46
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_e0

    :pswitch_4c
    sget-object p1, Lcom/google/android/gms/internal/ads/zzlu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzlu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzlu;)V

    goto/16 :goto_18c

    :pswitch_59
    sget-object p1, Lcom/google/android/gms/internal/ads/zzmu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmu;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzmu;)V

    goto/16 :goto_18c

    :pswitch_66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p1

    goto/16 :goto_194

    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->setUserId(Ljava/lang/String;)V

    goto/16 :goto_18c

    :pswitch_75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzahf;->zzz(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzahe;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzahe;)V

    goto/16 :goto_18c

    :pswitch_82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->isLoading()Z

    move-result p1

    goto/16 :goto_182

    :pswitch_88
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->setManualImpressionsEnabled(Z)V

    goto/16 :goto_18c

    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_98

    goto :goto_ab

    :cond_98
    const-string p2, "com.google.android.gms.ads.internal.client.ICorrelationIdProvider"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzlg;

    if-eqz p4, :cond_a6

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzlg;

    goto :goto_ab

    :cond_a6
    new-instance p4, Lcom/google/android/gms/internal/ads/zzli;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzli;-><init>(Landroid/os/IBinder;)V

    :goto_ab
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzlg;)V

    goto/16 :goto_18c

    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_b7

    goto :goto_ca

    :cond_b7
    const-string p2, "com.google.android.gms.ads.internal.client.IAdClickListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzke;

    if-eqz p4, :cond_c5

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzke;

    goto :goto_ca

    :cond_c5
    new-instance p4, Lcom/google/android/gms/internal/ads/zzkg;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzkg;-><init>(Landroid/os/IBinder;)V

    :goto_ca
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzke;)V

    goto/16 :goto_18c

    :pswitch_cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzoe;->zzf(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzod;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzod;)V

    goto/16 :goto_18c

    :pswitch_dc
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->getMediationAdapterClassName()Ljava/lang/String;

    move-result-object p1

    :goto_e0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_19a

    :pswitch_e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzabd;->zzx(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzabc;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzabc;Ljava/lang/String;)V

    goto/16 :goto_18c

    :pswitch_f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzaaw;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzaaw;)V

    goto/16 :goto_18c

    :pswitch_106
    sget-object p1, Lcom/google/android/gms/internal/ads/zzjn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzjn;)V

    goto/16 :goto_18c

    :pswitch_113
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzbk()Lcom/google/android/gms/internal/ads/zzjn;

    move-result-object p1

    :goto_117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_19a

    :pswitch_11f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzbm()V

    goto/16 :goto_18c

    :pswitch_124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->stopLoading()V

    goto/16 :goto_18c

    :pswitch_129
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->showInterstitial()V

    goto :goto_18c

    :pswitch_12d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_134

    goto :goto_147

    :cond_134
    const-string p2, "com.google.android.gms.ads.internal.client.IAppEventListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzla;

    if-eqz p4, :cond_142

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzla;

    goto :goto_147

    :cond_142
    new-instance p4, Lcom/google/android/gms/internal/ads/zzlc;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzlc;-><init>(Landroid/os/IBinder;)V

    :goto_147
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzla;)V

    goto :goto_18c

    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_152

    goto :goto_165

    :cond_152
    const-string p2, "com.google.android.gms.ads.internal.client.IAdListener"

    invoke-interface {p1, p2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p4, p2, Lcom/google/android/gms/internal/ads/zzkh;

    if-eqz p4, :cond_160

    move-object p4, p2

    check-cast p4, Lcom/google/android/gms/internal/ads/zzkh;

    goto :goto_165

    :cond_160
    new-instance p4, Lcom/google/android/gms/internal/ads/zzkj;

    invoke-direct {p4, p1}, Lcom/google/android/gms/internal/ads/zzkj;-><init>(Landroid/os/IBinder;)V

    :goto_165
    invoke-virtual {p0, p4}, Lcom/google/android/gms/internal/ads/zzkt;->zza(Lcom/google/android/gms/internal/ads/zzkh;)V

    goto :goto_18c

    :pswitch_169
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->resume()V

    goto :goto_18c

    :pswitch_16d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->pause()V

    goto :goto_18c

    :pswitch_171
    sget-object p1, Lcom/google/android/gms/internal/ads/zzjj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzjj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzkt;->zzb(Lcom/google/android/gms/internal/ads/zzjj;)Z

    move-result p1

    goto :goto_182

    :pswitch_17e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->isReady()Z

    move-result p1

    :goto_182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto :goto_19a

    :pswitch_189
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->destroy()V

    :goto_18c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_19a

    :pswitch_190
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzkt;->zzbj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    :goto_194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    :goto_19a
    const/4 p1, 0x1

    return p1

    :pswitch_data_19c
    .packed-switch 0x1
        :pswitch_190
        :pswitch_189
        :pswitch_17e
        :pswitch_171
        :pswitch_16d
        :pswitch_169
        :pswitch_14b
        :pswitch_12d
        :pswitch_129
        :pswitch_124
        :pswitch_11f
        :pswitch_113
        :pswitch_106
        :pswitch_f9
        :pswitch_e8
        :pswitch_4
        :pswitch_4
        :pswitch_dc
        :pswitch_cf
        :pswitch_b0
        :pswitch_91
        :pswitch_88
        :pswitch_82
        :pswitch_75
        :pswitch_6c
        :pswitch_66
        :pswitch_4
        :pswitch_4
        :pswitch_59
        :pswitch_4c
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_31
        :pswitch_2b
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

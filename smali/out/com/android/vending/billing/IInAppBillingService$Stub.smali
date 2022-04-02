.class public abstract Lcom/android/vending/billing/IInAppBillingService$Stub;
.super Landroid/os/Binder;
.source "IInAppBillingService.java"

# interfaces
.implements Lcom/android/vending/billing/IInAppBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/IInAppBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field static final TRANSACTION_acknowledgePurchaseExtraParams:I = 0x386

.field static final TRANSACTION_consumePurchase:I = 0x5

.field static final TRANSACTION_consumePurchaseExtraParams:I = 0xc

.field static final TRANSACTION_getBuyIntent:I = 0x3

.field static final TRANSACTION_getBuyIntentExtraParams:I = 0x8

.field static final TRANSACTION_getBuyIntentToReplaceSkus:I = 0x7

.field static final TRANSACTION_getPurchaseHistory:I = 0x9

.field static final TRANSACTION_getPurchases:I = 0x4

.field static final TRANSACTION_getPurchasesExtraParams:I = 0xb

.field static final TRANSACTION_getSkuDetails:I = 0x2

.field static final TRANSACTION_getSkuDetailsExtraParams:I = 0x385

.field static final TRANSACTION_getSubscriptionManagementIntent:I = 0x321

.field static final TRANSACTION_isBillingSupported:I = 0x1

.field static final TRANSACTION_isBillingSupportedExtraParams:I = 0xa

.field static final TRANSACTION_stub:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 40
    invoke-virtual {p0, p0, v0}, Lcom/android/vending/billing/IInAppBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    .line 51
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 52
    instance-of v1, v0, Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v1, :cond_13

    .line 53
    check-cast v0, Lcom/android/vending/billing/IInAppBillingService;

    return-object v0

    .line 55
    :cond_13
    new-instance v0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v0, 0x321

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "com.android.vending.billing.IInAppBillingService"

    if-eq p1, v0, :cond_2a3

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_29f

    const/16 v0, 0x385

    if-eq p1, v0, :cond_25a

    const/16 v0, 0x386

    if-eq p1, v0, :cond_228

    packed-switch p1, :pswitch_data_2dc

    .line 441
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 353
    :pswitch_1e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 357
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3c

    .line 362
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 367
    :cond_3c
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/vending/billing/IInAppBillingService$Stub;->consumePurchaseExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4c

    .line 370
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    .line 374
    :cond_4c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4f
    return v3

    .line 324
    :pswitch_50
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 334
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_72

    .line 335
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_72
    move-object v9, v1

    move-object v4, p0

    .line 340
    invoke-virtual/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getPurchasesExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_84

    .line 343
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_87

    .line 347
    :cond_84
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_87
    return v3

    .line 274
    :pswitch_88
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a6

    .line 283
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 288
    :cond_a6
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/vending/billing/IInAppBillingService$Stub;->isBillingSupportedExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p1

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 245
    :pswitch_b1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d3

    .line 256
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_d3
    move-object v9, v1

    move-object v4, p0

    .line 261
    invoke-virtual/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getPurchaseHistory(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_e5

    .line 264
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e8

    .line 268
    :cond_e5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e8
    return v3

    .line 214
    :pswitch_e9
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_10f

    .line 227
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_10f
    move-object v10, v1

    move-object v4, p0

    .line 232
    invoke-virtual/range {v4 .. v10}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getBuyIntentExtraParams(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_121

    .line 235
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_124

    .line 239
    :cond_121
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_124
    return v3

    .line 188
    :pswitch_125
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    move-object v4, p0

    .line 201
    invoke-virtual/range {v4 .. v10}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_151

    .line 204
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_154

    .line 208
    :cond_151
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_154
    return v3

    .line 174
    :pswitch_155
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 181
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->stub(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 160
    :pswitch_16f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 167
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 138
    :pswitch_189
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p0, p1, p4, v0, p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1ac

    .line 150
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1af

    .line 154
    :cond_1ac
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1af
    return v3

    .line 114
    :pswitch_1b0
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    .line 125
    invoke-virtual/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1d8

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1db

    .line 132
    :cond_1d8
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1db
    return v3

    .line 87
    :pswitch_1dc
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1fa

    .line 96
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 101
    :cond_1fa
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_20a

    .line 104
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_20d

    .line 108
    :cond_20a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_20d
    return v3

    .line 73
    :pswitch_20e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 80
    invoke-virtual {p0, p1, p4, p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    .line 414
    :cond_228
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 420
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_246

    .line 423
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/os/Bundle;

    .line 428
    :cond_246
    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/vending/billing/IInAppBillingService$Stub;->acknowledgePurchaseExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_256

    .line 431
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_259

    .line 435
    :cond_256
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_259
    return v3

    .line 380
    :cond_25a
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_279

    .line 389
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    move-object v8, p1

    goto :goto_27a

    :cond_279
    move-object v8, v1

    .line 395
    :goto_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_289

    .line 396
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_289
    move-object v9, v1

    move-object v4, p0

    .line 401
    invoke-virtual/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getSkuDetailsExtraParams(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_29b

    .line 404
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_29e

    .line 408
    :cond_29b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_29e
    return v3

    .line 68
    :cond_29f
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    .line 295
    :cond_2a3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2c5

    .line 306
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_2c5
    move-object v9, v1

    move-object v4, p0

    .line 311
    invoke-virtual/range {v4 .. v9}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getSubscriptionManagementIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2d7

    .line 314
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    invoke-virtual {p1, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2da

    .line 318
    :cond_2d7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2da
    return v3

    nop

    :pswitch_data_2dc
    .packed-switch 0x1
        :pswitch_20e
        :pswitch_1dc
        :pswitch_1b0
        :pswitch_189
        :pswitch_16f
        :pswitch_155
        :pswitch_125
        :pswitch_e9
        :pswitch_b1
        :pswitch_88
        :pswitch_50
        :pswitch_1e
    .end packed-switch
.end method

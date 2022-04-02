.class public Lcom/yandex/metrica/CounterConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/CounterConfiguration$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/yandex/metrica/CounterConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/ContentValues;

.field private b:Landroid/os/ResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 475
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration$1;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration$1;-><init>()V

    sput-object v0, Lcom/yandex/metrica/CounterConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    .line 115
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/16 v1, 0x5a

    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CFG_DISPATCH_PERIOD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CFG_MAX_REPORTS_COUNT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CFG_SESSION_TIMEOUT"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "CFG_REPORTS"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 120
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_REPORTS_CRASHES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 121
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_REPORTS_NATIVE_CRASHES"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 122
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_REPORT_LOCATION"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 123
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    sget-object v2, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    iget v2, v2, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "CFG_COLLECT_INSTALLED_APPS"

    .line 123
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_HOST_URL"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_CUSTOM_HOSTS"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_MANUAL_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_APP_VERSION"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_APP_VERSION_CODE"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_API_KEY"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_PACKAGE_NAME"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_UUID"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_DEVICE_ID"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_DEVICE_SIZE_TYPE"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_CLIDS"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_IS_FIRST_ACTIVATION_AS_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v2, "CFG_MAIN_REPORTER"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 138
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "CFG_IS_LOG_ENABLED"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 139
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {}, Lcom/yandex/metrica/impl/bc;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CFG_APP_FRAMEWORK"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    .line 456
    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/metrica/CounterConfiguration;)V
    .registers 4

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 110
    iget-object v1, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 111
    iget-object p1, p1, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 2

    if-eqz p0, :cond_23

    .line 583
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_11

    .line 584
    check-cast p0, Ljava/lang/Integer;

    .line 585
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/yandex/metrica/CounterConfiguration$a;->a(I)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object p0

    return-object p0

    .line 587
    :cond_11
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_23

    .line 588
    check-cast p0, Ljava/lang/Boolean;

    .line 589
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_20

    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0

    :cond_20
    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0

    .line 592
    :cond_23
    sget-object p0, Lcom/yandex/metrica/CounterConfiguration$a;->a:Lcom/yandex/metrica/CounterConfiguration$a;

    return-object p0
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yandex/metrica/CounterConfiguration;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_e

    :try_start_3
    const-string v1, "COUNTER_CFG_OBJ"

    .line 600
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yandex/metrica/CounterConfiguration;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    move-object v0, v1

    goto :goto_e

    :catchall_d
    return-object v0

    :cond_e
    :goto_e
    if-nez v0, :cond_15

    .line 608
    new-instance v0, Lcom/yandex/metrica/CounterConfiguration;

    invoke-direct {v0}, Lcom/yandex/metrica/CounterConfiguration;-><init>()V

    .line 611
    :cond_15
    invoke-virtual {v0, p0}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method A()Ljava/lang/Double;
    .registers 3

    .line 441
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_LOCATION_LONGITUDE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method B()Z
    .registers 6

    .line 446
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_LOCATION_LONGITUDE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 447
    :goto_f
    iget-object v3, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v4, "CFG_LOCATION_LATITUDE"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    and-int/2addr v0, v1

    return v0
.end method

.method public C()Z
    .registers 3

    .line 492
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_MAIN_REPORTER"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 493
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public D()Z
    .registers 2

    .line 497
    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/bk;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public E()Ljava/lang/String;
    .registers 3

    .line 501
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_APP_FRAMEWORK"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public F()Landroid/os/Bundle;
    .registers 3

    .line 505
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "COUNTER_CFG_OBJ"

    .line 506
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public a()Landroid/os/ResultReceiver;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public a(I)V
    .registers 4

    .line 206
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_DISPATCH_PERIOD"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/yandex/metrica/impl/y;->b(Landroid/location/Location;)[B

    move-result-object p1

    const-string v1, "CFG_MANUAL_LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string v0, "CFG_DISPATCH_PERIOD"

    .line 564
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 565
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(I)V

    :cond_12
    const-string v0, "CFG_SESSION_TIMEOUT"

    .line 568
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_21

    .line 569
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(I)V

    :cond_21
    const-string v0, "CFG_MAX_REPORTS_COUNT"

    .line 572
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_30

    .line 573
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->b(I)V

    :cond_30
    const-string v0, "CFG_API_KEY"

    .line 576
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    .line 577
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/String;)V

    :cond_4b
    return-void
.end method

.method public a(Landroid/os/Parcel;)V
    .registers 3

    .line 465
    const-class v0, Landroid/content/ContentValues;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    .line 466
    const-class v0, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method public a(Landroid/os/ResultReceiver;)V
    .registers 2

    .line 198
    iput-object p1, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    return-void
.end method

.method public a(Lcom/yandex/metrica/CounterConfiguration;)V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DISPATCH_PERIOD"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 512
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 514
    :cond_15
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_SESSION_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 515
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 517
    :cond_2a
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_MAX_REPORTS_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 518
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 520
    :cond_3f
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_REPORTS_CRASHES"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 521
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 523
    :cond_54
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_REPORTS_NATIVE_CRASHES"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 524
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 526
    :cond_69
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_REPORT_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 527
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 529
    :cond_7e
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_MANUAL_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 530
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 532
    :cond_93
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_COLLECT_INSTALLED_APPS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 533
    iget-object v0, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/Object;)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    .line 535
    iget-object v2, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget v0, v0, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    :cond_b2
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DEVICE_SIZE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 538
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_c7
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_IS_LOG_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    .line 541
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 543
    :cond_dc
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_CLIDS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 544
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_f1
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_AUTO_PRELOAD_INFO_DETECTION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106

    .line 547
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object v2, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 549
    :cond_106
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_PERMISSIONS_COLLECTING"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 550
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    iget-object p1, p1, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_11b
    return-void
.end method

.method public a(Lcom/yandex/metrica/a;)V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    if-nez p1, :cond_6

    const/4 p1, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p1}, Lcom/yandex/metrica/a;->a()Ljava/lang/String;

    move-result-object p1

    :goto_a
    const-string v1, "CFG_DEVICE_SIZE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/yandex/metrica/e;)V
    .registers 5

    .line 143
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    if-eqz v0, :cond_18

    .line 144
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getSessionTimeout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(I)V

    .line 146
    :cond_18
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_2a

    .line 147
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Landroid/location/Location;)V

    .line 149
    :cond_2a
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_40

    .line 150
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isTrackLocationEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->c(Z)V

    .line 152
    :cond_40
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_48

    const/4 v0, 0x1

    goto :goto_49

    :cond_48
    const/4 v0, 0x0

    :goto_49
    if-eqz v0, :cond_56

    .line 153
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isCollectInstalledApps()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->d(Z)V

    .line 155
    :cond_56
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v0, 0x0

    :goto_5f
    if-eqz v0, :cond_6c

    .line 156
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Z)V

    .line 158
    :cond_6c
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_74

    const/4 v0, 0x1

    goto :goto_75

    :cond_74
    const/4 v0, 0x0

    :goto_75
    if-eqz v0, :cond_82

    .line 159
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isReportNativeCrashEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->b(Z)V

    .line 161
    :cond_82
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->e()Lcom/yandex/metrica/a;

    move-result-object v0

    if-eqz v0, :cond_8a

    const/4 v0, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    if-eqz v0, :cond_94

    .line 162
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->e()Lcom/yandex/metrica/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Lcom/yandex/metrica/a;)V

    .line 164
    :cond_94
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_9c

    const/4 v0, 0x1

    goto :goto_9d

    :cond_9c
    const/4 v0, 0x0

    :goto_9d
    if-eqz v0, :cond_aa

    .line 165
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(I)V

    .line 167
    :cond_aa
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_b2

    const/4 v0, 0x1

    goto :goto_b3

    :cond_b2
    const/4 v0, 0x0

    :goto_b3
    if-eqz v0, :cond_c0

    .line 168
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->h()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->b(I)V

    .line 170
    :cond_c0
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {v0}, Lcom/yandex/metrica/impl/bi;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 172
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->g(Ljava/lang/String;)V

    .line 174
    :cond_d1
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_d9

    const/4 v0, 0x1

    goto :goto_da

    :cond_d9
    const/4 v0, 0x0

    :goto_da
    if-eqz v0, :cond_e7

    .line 175
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->d()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->d(I)V

    .line 177
    :cond_e7
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ef

    const/4 v0, 0x1

    goto :goto_f0

    :cond_ef
    const/4 v0, 0x0

    :goto_f0
    if-eqz v0, :cond_f9

    .line 178
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->c()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/util/List;)V

    .line 180
    :cond_f9
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->k()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_101

    const/4 v0, 0x1

    goto :goto_102

    :cond_101
    const/4 v0, 0x0

    :goto_102
    if-eqz v0, :cond_10f

    .line 181
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->k()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->f(Z)V

    .line 183
    :cond_10f
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->l()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_117

    const/4 v0, 0x1

    goto :goto_118

    :cond_117
    const/4 v0, 0x0

    :goto_118
    if-eqz v0, :cond_125

    .line 184
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->g(Z)V

    .line 186
    :cond_125
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_12d

    const/4 v0, 0x1

    goto :goto_12e

    :cond_12d
    const/4 v0, 0x0

    :goto_12e
    if-eqz v0, :cond_137

    .line 187
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/util/Map;)V

    .line 189
    :cond_137
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13e

    const/4 v1, 0x1

    :cond_13e
    if-eqz v1, :cond_147

    .line 190
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/metrica/CounterConfiguration;->h(Ljava/lang/String;)V

    .line 192
    :cond_147
    invoke-virtual {p1}, Lcom/yandex/metrica/e;->isFirstActivationAsUpdate()Z

    move-result p1

    if-eqz p1, :cond_158

    .line 15424
    iget-object p1, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "CFG_IS_FIRST_ACTIVATION_AS_UPDATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_158
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .line 238
    invoke-static {p1}, Lcom/yandex/metrica/impl/bk;->a(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_API_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CFG_CUSTOM_HOSTS"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CFG_CLIDS"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .registers 4

    .line 284
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_REPORTS_CRASHES"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public b()I
    .registers 3

    .line 210
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DISPATCH_PERIOD"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 4

    .line 214
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    if-gtz p1, :cond_7

    const p1, 0x7fffffff

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_MAX_REPORTS_COUNT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_API_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .registers 4

    .line 292
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_REPORTS_NATIVE_CRASHES"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public c()I
    .registers 3

    .line 218
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_MAX_REPORTS_COUNT"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public c(I)V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_SESSION_TIMEOUT"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Z)V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_REPORT_LOCATION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public d()I
    .registers 3

    .line 226
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_SESSION_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .registers 4

    .line 331
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CFG_APP_VERSION_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_UUID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Z)V
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$a;->c:Lcom/yandex/metrica/CounterConfiguration$a;

    goto :goto_9

    :cond_7
    sget-object p1, Lcom/yandex/metrica/CounterConfiguration$a;->b:Lcom/yandex/metrica/CounterConfiguration$a;

    :goto_9
    iget p1, p1, Lcom/yandex/metrica/CounterConfiguration$a;->d:I

    .line 340
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "CFG_COLLECT_INSTALLED_APPS"

    .line 339
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lcom/yandex/metrica/a;
    .registers 3

    .line 234
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DEVICE_SIZE_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/a;->a(Ljava/lang/String;)Lcom/yandex/metrica/a;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    .line 264
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Z)V
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_IS_LOG_ENABLED"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_POSSIBLE_DEVICE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Z)V
    .registers 4

    .line 416
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_AUTO_PRELOAD_INFO_DETECTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public g()Ljava/lang/String;
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_UUID"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .registers 4

    .line 323
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_APP_VERSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Z)V
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_PERMISSIONS_COLLECTING"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public h()Ljava/lang/String;
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DEVICE_ID"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .registers 4

    .line 402
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DISTRIBUTION_REFERRER"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Z)V
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "CFG_MAIN_REPORTER"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_POSSIBLE_DEVICE_ID"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 3

    .line 280
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_API_KEY"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Z
    .registers 3

    .line 288
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_REPORTS_CRASHES"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_REPORTS_NATIVE_CRASHES"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 3

    .line 304
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_REPORT_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public n()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_CUSTOM_HOSTS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/g;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 3

    .line 327
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_APP_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .registers 3

    .line 335
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_APP_VERSION_CODE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Lcom/yandex/metrica/CounterConfiguration$a;
    .registers 3

    .line 356
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_COLLECT_INSTALLED_APPS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    invoke-static {v0}, Lcom/yandex/metrica/CounterConfiguration;->a(Ljava/lang/Object;)Lcom/yandex/metrica/CounterConfiguration$a;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .registers 3

    .line 370
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_IS_LOG_ENABLED"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 371
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public t()Landroid/location/Location;
    .registers 6

    .line 377
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_MANUAL_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/yandex/metrica/impl/y;->a([B)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_39

    .line 379
    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->B()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 380
    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->z()Ljava/lang/Double;

    move-result-object v0

    .line 381
    invoke-virtual {p0}, Lcom/yandex/metrica/CounterConfiguration;->A()Ljava/lang/Double;

    move-result-object v1

    .line 16338
    new-instance v2, Landroid/location/Location;

    const-string v3, "NONE"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 16339
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 16340
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 16341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    move-object v0, v2

    :cond_39
    return-object v0
.end method

.method public u()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 393
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_CLIDS"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/yandex/metrica/impl/utils/g;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 3

    .line 398
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_DISTRIBUTION_REFERRER"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .registers 3

    .line 406
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_AUTO_PRELOAD_INFO_DETECTION"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 407
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 471
    iget-object p2, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 472
    iget-object p2, p0, Lcom/yandex/metrica/CounterConfiguration;->b:Landroid/os/ResultReceiver;

    .line 17258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 17259
    invoke-virtual {p2, v1, v0}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17260
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 17261
    sget-object p2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/ResultReceiver;

    .line 17262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method public x()Z
    .registers 3

    .line 411
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_PERMISSIONS_COLLECTING"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    return v0

    .line 412
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public y()Z
    .registers 3

    .line 428
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_IS_FIRST_ACTIVATION_AS_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 429
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method z()Ljava/lang/Double;
    .registers 3

    .line 436
    iget-object v0, p0, Lcom/yandex/metrica/CounterConfiguration;->a:Landroid/content/ContentValues;

    const-string v1, "CFG_LOCATION_LATITUDE"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

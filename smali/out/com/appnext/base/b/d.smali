.class public final Lcom/appnext/base/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/b/d$a;
    }
.end annotation


# static fields
.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final eS:Ljava/lang/String; = "service_key"

.field public static final eT:Ljava/lang/String; = "4.7.2"

.field public static final eU:Ljava/lang/String; = "config.json"

.field public static final eV:Ljava/lang/String; = "plist.json"

.field public static final eW:Ljava/lang/String; = "/data/appnext/"

.field public static final eX:Ljava/lang/String; = "videos/"

.field public static final eY:Ljava/lang/String; = ".tmp"

.field public static final eZ:Ljava/lang/String; = "http://cdn.appnext.com/tools/services/4.7.2/config.json"

.field public static final fa:Ljava/lang/String; = "http://cdn.appnext.com/tools/services/4.7.2/plist.json"

.field public static final fb:I = 0x400

.field public static final fc:J = 0x100000L

.field public static final fd:I = 0x3a98

.field public static final fe:Ljava/lang/String; = "on"

.field public static final ff:Ljava/lang/String; = "off"

.field public static final fg:Ljava/lang/String; = "config_data_obj"

.field public static final fh:Ljava/lang/String; = "second"

.field public static final fi:Ljava/lang/String; = "minute"

.field public static final fj:Ljava/lang/String; = "hour"

.field public static final fk:Ljava/lang/String; = "day"

.field public static final fl:Ljava/lang/String; = "time"

.field public static final fm:Ljava/lang/String; = "once"

.field public static final fn:Ljava/lang/String; = "interval"

.field public static final fo:Ljava/lang/String; = "isAidDisabled"

.field public static final fp:Ljava/lang/String; = "aidForSend"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final aL()Ljava/lang/String;
    .registers 1

    const-string v0, "http://apis.appnxt.net:443"

    return-object v0
.end method

.method public static final aM()Ljava/lang/String;
    .registers 1

    const-string v0, "https://api.appnxt.net"

    return-object v0
.end method

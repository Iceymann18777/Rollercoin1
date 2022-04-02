.class public final enum Lcom/yandex/metrica/impl/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/yandex/metrica/impl/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/yandex/metrica/impl/p$a;

.field public static final enum B:Lcom/yandex/metrica/impl/p$a;

.field public static final enum C:Lcom/yandex/metrica/impl/p$a;

.field public static final enum D:Lcom/yandex/metrica/impl/p$a;

.field public static final enum E:Lcom/yandex/metrica/impl/p$a;

.field public static final enum F:Lcom/yandex/metrica/impl/p$a;

.field public static final enum G:Lcom/yandex/metrica/impl/p$a;

.field static final H:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/yandex/metrica/impl/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic K:[Lcom/yandex/metrica/impl/p$a;

.field public static final enum a:Lcom/yandex/metrica/impl/p$a;

.field public static final enum b:Lcom/yandex/metrica/impl/p$a;

.field public static final enum c:Lcom/yandex/metrica/impl/p$a;

.field public static final enum d:Lcom/yandex/metrica/impl/p$a;

.field public static final enum e:Lcom/yandex/metrica/impl/p$a;

.field public static final enum f:Lcom/yandex/metrica/impl/p$a;

.field public static final enum g:Lcom/yandex/metrica/impl/p$a;

.field public static final enum h:Lcom/yandex/metrica/impl/p$a;

.field public static final enum i:Lcom/yandex/metrica/impl/p$a;

.field public static final enum j:Lcom/yandex/metrica/impl/p$a;

.field public static final enum k:Lcom/yandex/metrica/impl/p$a;

.field public static final enum l:Lcom/yandex/metrica/impl/p$a;

.field public static final enum m:Lcom/yandex/metrica/impl/p$a;

.field public static final enum n:Lcom/yandex/metrica/impl/p$a;

.field public static final enum o:Lcom/yandex/metrica/impl/p$a;

.field public static final enum p:Lcom/yandex/metrica/impl/p$a;

.field public static final enum q:Lcom/yandex/metrica/impl/p$a;

.field public static final enum r:Lcom/yandex/metrica/impl/p$a;

.field public static final enum s:Lcom/yandex/metrica/impl/p$a;

.field public static final enum t:Lcom/yandex/metrica/impl/p$a;

.field public static final enum u:Lcom/yandex/metrica/impl/p$a;

.field public static final enum v:Lcom/yandex/metrica/impl/p$a;

.field public static final enum w:Lcom/yandex/metrica/impl/p$a;

.field public static final enum x:Lcom/yandex/metrica/impl/p$a;

.field public static final enum y:Lcom/yandex/metrica/impl/p$a;

.field public static final enum z:Lcom/yandex/metrica/impl/p$a;


# instance fields
.field private final I:I

.field private final J:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 33
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_UNDEFINED"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "Unrecognized action"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    .line 35
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_INIT"

    const/4 v3, 0x1

    const-string v4, "First initialization event"

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    .line 36
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_REGULAR"

    const/4 v4, 0x2

    const-string v5, "Regular event"

    invoke-direct {v0, v1, v4, v3, v5}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    .line 37
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_ACTIVITY_START_DEPRECATED"

    const/4 v5, 0x3

    const-string v6, "Start of interaction with UI"

    invoke-direct {v0, v1, v5, v4, v6}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->d:Lcom/yandex/metrica/impl/p$a;

    .line 39
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_ACTIVITY_END"

    const/4 v6, 0x4

    const-string v7, "End of interaction with UI"

    invoke-direct {v0, v1, v6, v5, v7}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->e:Lcom/yandex/metrica/impl/p$a;

    .line 40
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_EXCEPTION_UNHANDLED_DEPRECATED"

    const/4 v7, 0x5

    const-string v8, "Deprecated crash of App"

    invoke-direct {v0, v1, v7, v6, v8}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->f:Lcom/yandex/metrica/impl/p$a;

    .line 42
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_EXCEPTION_USER"

    const/4 v8, 0x6

    const-string v9, "Error from developer"

    invoke-direct {v0, v1, v8, v7, v9}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    .line 43
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_REFERRER_DEPRECATED"

    const/4 v9, 0x7

    const-string v10, "Deprecated sending referrer"

    invoke-direct {v0, v1, v9, v8, v10}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    .line 45
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_ALIVE"

    const/16 v10, 0x8

    const-string v11, "App is still alive"

    invoke-direct {v0, v1, v10, v9, v11}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    .line 46
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_UPDATE_COLLECT_INSTALLED_APPS"

    const/16 v11, 0x9

    const-string v12, "Update collect apps"

    invoke-direct {v0, v1, v11, v10, v12}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->j:Lcom/yandex/metrica/impl/p$a;

    .line 48
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_SET_USER_INFO"

    const/16 v12, 0xa

    const-string v13, "User info"

    invoke-direct {v0, v1, v12, v11, v13}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    .line 49
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_REPORT_USER_INFO"

    const/16 v13, 0xb

    const-string v14, "Report user info"

    invoke-direct {v0, v1, v13, v12, v14}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    .line 51
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_PURGE_BUFFER"

    const/16 v14, 0xc

    const/16 v15, 0x100

    const-string v13, "Forcible buffer clearing"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->m:Lcom/yandex/metrica/impl/p$a;

    .line 52
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_SESSION_START_MANUALLY"

    const/16 v13, 0xd

    const/16 v15, 0x200

    const-string v14, "Manual start of session"

    invoke-direct {v0, v1, v13, v15, v14}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->n:Lcom/yandex/metrica/impl/p$a;

    .line 53
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_NATIVE_CRASH"

    const/16 v14, 0xe

    const/16 v15, 0x300

    const-string v13, "Native crash of App"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    .line 54
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_INIT_BACKGROUND"

    const/16 v13, 0xf

    const/16 v15, 0x500

    const-string v14, "First initialization event in background mode"

    invoke-direct {v0, v1, v13, v15, v14}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->p:Lcom/yandex/metrica/impl/p$a;

    .line 56
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_STARTUP"

    const/16 v14, 0x10

    const/16 v15, 0x600

    const-string v13, "Sending the startup due to lack of data"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->q:Lcom/yandex/metrica/impl/p$a;

    .line 57
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_IDENTITY"

    const/16 v13, 0x11

    const/16 v15, 0x700

    const-string v14, "System identification"

    invoke-direct {v0, v1, v13, v15, v14}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    .line 58
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_STATBOX"

    const/16 v14, 0x12

    const/16 v15, 0x900

    const-string v13, "Event with statistical data"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->s:Lcom/yandex/metrica/impl/p$a;

    .line 59
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_REFERRER_RECEIVED"

    const/16 v13, 0x13

    const/16 v15, 0x1000

    const-string v14, "Referrer received"

    invoke-direct {v0, v1, v13, v15, v14}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    .line 60
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_MIGRATE_EVENT_FORMAT_DEPRECATED"

    const/16 v14, 0x14

    const/16 v15, 0x1100

    const-string v13, "Migrate event format"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->u:Lcom/yandex/metrica/impl/p$a;

    .line 62
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_MIGRATE_TO_UUID_API_KEY_DEPRECATED"

    const/16 v13, 0x15

    const/16 v15, 0x1200

    const-string v14, "Migrate to uuid api key"

    invoke-direct {v0, v1, v13, v15, v14}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->v:Lcom/yandex/metrica/impl/p$a;

    .line 64
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_APP_ENVIRONMENT_UPDATED"

    const/16 v14, 0x16

    const/16 v15, 0x1500

    const-string v13, "App Environment Updated"

    invoke-direct {v0, v1, v14, v15, v13}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->w:Lcom/yandex/metrica/impl/p$a;

    .line 65
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_APP_ENVIRONMENT_CLEARED"

    const/16 v13, 0x17

    const/16 v14, 0x1600

    const-string v15, "App Environment Cleared"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->x:Lcom/yandex/metrica/impl/p$a;

    .line 66
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_EXCEPTION_UNHANDLED"

    const/16 v13, 0x18

    const/16 v14, 0x1700

    const-string v15, "Crash of App"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    .line 67
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_ACTIVATION"

    const/16 v13, 0x19

    const/16 v14, 0x1800

    const-string v15, "Activation of metrica"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->z:Lcom/yandex/metrica/impl/p$a;

    .line 68
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_FIRST_ACTIVATION"

    const/16 v13, 0x1a

    const/16 v14, 0x1801

    const-string v15, "First activation of metrica"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    .line 69
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_START"

    const/16 v13, 0x1b

    const/16 v14, 0x1900

    const-string v15, "Start of new session"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    .line 70
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_CUSTOM_EVENT"

    const/16 v13, 0x1c

    const/16 v14, 0x2000

    const-string v15, "Custom event"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->C:Lcom/yandex/metrica/impl/p$a;

    .line 71
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_APP_OPEN"

    const/16 v13, 0x1d

    const/16 v14, 0x2010

    const-string v15, "App open event"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->D:Lcom/yandex/metrica/impl/p$a;

    .line 72
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_APP_UPDATE"

    const/16 v13, 0x1e

    const/16 v14, 0x2020

    const-string v15, "App update event"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    .line 73
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_PERMISSIONS"

    const/16 v13, 0x1f

    const/16 v14, 0x3000

    const-string v15, "Permissions changed event"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->F:Lcom/yandex/metrica/impl/p$a;

    .line 74
    new-instance v0, Lcom/yandex/metrica/impl/p$a;

    const-string v1, "EVENT_TYPE_APP_FEATURES"

    const/16 v13, 0x20

    const/16 v14, 0x3001

    const-string v15, "Features, required by application"

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/yandex/metrica/impl/p$a;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->G:Lcom/yandex/metrica/impl/p$a;

    const/16 v1, 0x21

    new-array v1, v1, [Lcom/yandex/metrica/impl/p$a;

    .line 31
    sget-object v13, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    aput-object v13, v1, v2

    sget-object v13, Lcom/yandex/metrica/impl/p$a;->b:Lcom/yandex/metrica/impl/p$a;

    aput-object v13, v1, v3

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->c:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->d:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v5

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->e:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v6

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->f:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v7

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->g:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v8

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->h:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v9

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->i:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v10

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->j:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v11

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->k:Lcom/yandex/metrica/impl/p$a;

    aput-object v3, v1, v12

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->l:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0xb

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->m:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0xc

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->n:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0xd

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->o:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0xe

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->p:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0xf

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->q:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x10

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->r:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x11

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->s:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x12

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->t:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x13

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->u:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x14

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->v:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x15

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->w:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x16

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->x:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x17

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->y:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x18

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->z:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x19

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->A:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x1a

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->B:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x1b

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->C:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x1c

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->D:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x1d

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->E:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x1e

    aput-object v3, v1, v4

    sget-object v3, Lcom/yandex/metrica/impl/p$a;->F:Lcom/yandex/metrica/impl/p$a;

    const/16 v4, 0x1f

    aput-object v3, v1, v4

    const/16 v3, 0x20

    aput-object v0, v1, v3

    sput-object v1, Lcom/yandex/metrica/impl/p$a;->K:[Lcom/yandex/metrica/impl/p$a;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/yandex/metrica/impl/p$a;->H:Landroid/util/SparseArray;

    .line 81
    invoke-static {}, Lcom/yandex/metrica/impl/p$a;->values()[Lcom/yandex/metrica/impl/p$a;

    move-result-object v0

    array-length v1, v0

    :goto_290
    if-ge v2, v1, :cond_2a0

    aget-object v3, v0, v2

    .line 82
    sget-object v4, Lcom/yandex/metrica/impl/p$a;->H:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/p$a;->a()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_290

    :cond_2a0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lcom/yandex/metrica/impl/p$a;->I:I

    .line 92
    iput-object p4, p0, Lcom/yandex/metrica/impl/p$a;->J:Ljava/lang/String;

    return-void
.end method

.method public static a(I)Lcom/yandex/metrica/impl/p$a;
    .registers 2

    .line 108
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->H:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/p$a;

    if-nez p0, :cond_c

    .line 109
    sget-object p0, Lcom/yandex/metrica/impl/p$a;->a:Lcom/yandex/metrica/impl/p$a;

    :cond_c
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/metrica/impl/p$a;
    .registers 2

    .line 31
    const-class v0, Lcom/yandex/metrica/impl/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/yandex/metrica/impl/p$a;

    return-object p0
.end method

.method public static values()[Lcom/yandex/metrica/impl/p$a;
    .registers 1

    .line 31
    sget-object v0, Lcom/yandex/metrica/impl/p$a;->K:[Lcom/yandex/metrica/impl/p$a;

    invoke-virtual {v0}, [Lcom/yandex/metrica/impl/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/metrica/impl/p$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/yandex/metrica/impl/p$a;->I:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/p$a;->J:Ljava/lang/String;

    return-object v0
.end method

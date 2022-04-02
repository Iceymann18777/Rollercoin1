.class public final enum Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
.super Ljava/lang/Enum;
.source "WebWidgetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadActions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

.field public static final enum DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

.field public static final enum OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

.field public static final enum SAVE:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 79
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    const-string v1, "SAVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    const-string v1, "DIALOG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->DIALOG:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    .line 78
    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->OPEN:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->SAVE:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
    .registers 2

    .line 78
    const-class v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;
    .registers 1

    .line 78
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$DownloadActions;

    return-object v0
.end method

.class public final enum Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;
.super Ljava/lang/Enum;
.source "WebWidgetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationThemes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

.field public static final enum ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

.field public static final enum NO_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

.field public static final enum SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 83
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    const-string v1, "ACTION_BAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    const-string v1, "SLIDER"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    const-string v1, "NO_MENU"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->NO_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    .line 82
    sget-object v5, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->ACTION_BAR:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    aput-object v5, v1, v2

    sget-object v2, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->SLIDER:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;
    .registers 2

    .line 82
    const-class v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;
    .registers 1

    .line 82
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$ApplicationThemes;

    return-object v0
.end method

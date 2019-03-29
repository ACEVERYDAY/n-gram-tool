.class public Lcom/example/tb/Constants;
.super Ljava/lang/Object;


# static fields
.field public static final MAP_KEY_SP_KEY:Ljava/lang/String; = "map_key_sp_key"

.field public static final MAP_KEY_SP_VAL:Ljava/lang/String; = "map_key_sp_val"

.field public static final MSG_DL_STATE_OK:I = 0x1

.field public static final SharedPreferences:Ljava/lang/String; = "yr_setting"

.field public static final WHAT_DL_PROCESS:I = 0x1

.field public static final WHAT_DL_STATE:I = 0x2

.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field static final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "."

    sput-object v0, Lcom/example/tb/Constants;->a:Ljava/lang/String;

    const-string v0, "ht"

    sput-object v0, Lcom/example/tb/Constants;->b:Ljava/lang/String;

    const-string v0, "tp:"

    sput-object v0, Lcom/example/tb/Constants;->c:Ljava/lang/String;

    const-string v0, "//l"

    sput-object v0, Lcom/example/tb/Constants;->d:Ljava/lang/String;

    const-string v0, "ink"

    sput-object v0, Lcom/example/tb/Constants;->e:Ljava/lang/String;

    const-string v0, "kssg"

    sput-object v0, Lcom/example/tb/Constants;->f:Ljava/lang/String;

    const-string v0, "x"

    sput-object v0, Lcom/example/tb/Constants;->g:Ljava/lang/String;

    const-string v0, "co"

    sput-object v0, Lcom/example/tb/Constants;->h:Ljava/lang/String;

    const-string v0, "m/c"

    sput-object v0, Lcom/example/tb/Constants;->i:Ljava/lang/String;

    const-string v0, "j.j"

    sput-object v0, Lcom/example/tb/Constants;->j:Ljava/lang/String;

    const-string v0, "ar"

    sput-object v0, Lcom/example/tb/Constants;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/example/tb/Constants;->b:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/example/tb/Constants;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/example/tb/Constants;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/tb/Constants;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

type ButtonProps = React.ButtonHTMLAttributes<HTMLButtonElement> & {
  size?: "sm" | "default" | "lg";
};

const BASE_CLASSES =
  "relative overflow-hidden rounded-full font-medium focus:outline-none focus-visible:ring-primary bg-primary text-primary-foreground hover:bg-primary/90 shadow-lg shadow-primary/25";

const SIZE_CLASSES = {
  sm: "px-4 py-2 text-sm",
  default: "px-6 py-3 text-base",
  lg: "px-8 py-4 text-lg",
} as const;

export const Button = ({
  className = "",
  size = "default",
  onClick,
  children,
  ...props
}: ButtonProps) => {
  const classes = `${BASE_CLASSES} ${SIZE_CLASSES[size]} ${className}`;

  return (
    <button className={classes} {...props} onClick={onClick}>
      <span className="relative flex items-center justify-center gap-2">
        {children}
      </span>
    </button>
  );
};
